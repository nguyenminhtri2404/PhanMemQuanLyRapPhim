using DAL;
using DTO;
using Microsoft.ML;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
namespace BUL
{
    public class DuDoanBUL
    {

        private DuDoanDAL duDoanDAL;
        private ITransformer model;


        public DuDoanBUL()
        {
            duDoanDAL = new DuDoanDAL();

        }

        public List<InputModel> GetMovieData(int takeCount = 5)
        {
            return duDoanDAL.GetMovieData(takeCount);
        }
        public async Task<List<InputModel>> GetMovieDataAsync(int takeCount = 5)
        {
            return await Task.Run(() => GetMovieData(takeCount));
        }


        public async Task TrainAndSaveModelAsync()
        {
            MLContext mlContext = new MLContext();

            try
            {
                // Lấy dữ liệu từ DAL
                List<InputModel> movieData = await duDoanDAL.GetMovieDataAsync();

                if (movieData == null || !movieData.Any())
                {
                    throw new Exception("Không có dữ liệu phim để huấn luyện.");
                }

                // Tạo pipeline
                IDataView trainData = mlContext.Data.LoadFromEnumerable(movieData);

                Microsoft.ML.Data.EstimatorChain<Microsoft.ML.Transforms.KeyToValueMappingTransformer> pipeline = mlContext.Transforms.Conversion.MapValueToKey("Label", nameof(InputModel.TenLoaiPhim))
                    .Append(mlContext.Transforms.Concatenate("Features", nameof(InputModel.Tuoi)))
                    .Append(mlContext.MulticlassClassification.Trainers.SdcaMaximumEntropy("Label", "Features"))
                    .Append(mlContext.Transforms.Conversion.MapKeyToValue("PredictedLabel", "Label"));

                // Huấn luyện mô hình
                model = pipeline.Fit(trainData);

                // Lưu mô hình
                mlContext.Model.Save(model, trainData.Schema, "movie_model.zip");
            }
            catch (Exception ex)
            {
                throw new Exception($"Đã xảy ra lỗi khi huấn luyện mô hình: {ex.Message}");
            }
        }

        public async Task<List<string>> PredictMoviesByGenreAsync(InputModel inputData)
        {
            MLContext mlContext = new MLContext();

            try
            {
                // Kiểm tra mô hình có tồn tại không
                if (model == null)
                {
                    throw new Exception("Mô hình chưa được huấn luyện.");
                }

                // Sử dụng PredictionEngine để dự đoán
                PredictionEngine<InputModel, ResultModel> predictionEngine = mlContext.Model.CreatePredictionEngine<InputModel, ResultModel>(model);
                ResultModel prediction = predictionEngine.Predict(inputData);

                return new List<string> { prediction.PredictedMovie };
            }
            catch (Exception ex)
            {
                return new List<string> { $"Đã xảy ra lỗi: {ex.Message}" };
            }
        }

    }
}
