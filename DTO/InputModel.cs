namespace DTO
{
    public class InputModel
    {
        public float Tuoi { get; set; }
        public string TenLoaiPhim { get; set; }
        public string TenPhim { get; set; }

        public InputModel() { }

        public InputModel(float tuoi, string tenLoaiPhim, string tenPhim)
        {
            Tuoi = tuoi;
            TenLoaiPhim = tenLoaiPhim;
            TenPhim = tenPhim;
        }
    }

}
