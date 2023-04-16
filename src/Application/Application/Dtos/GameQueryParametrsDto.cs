namespace Application.Dtos
{
    public record GameQueryParametrsDto
    {
       
        public bool IsAscSorting { get; set; } = false;
        public int PageLength { get; set; } = 10;
        public int StartFrom { get; set; } = 0;
        public string? SearchQuery { get; set; }
        public string? OrderColumn { get; set; } = "name";
    }
}
