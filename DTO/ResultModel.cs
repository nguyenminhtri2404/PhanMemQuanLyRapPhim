using Microsoft.ML.Data;

namespace DTO
{
    public class ResultModel
    {
        [ColumnName("PredictedLabel")]
        public string PredictedMovie { get; set; }
    }
}
