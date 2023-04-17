namespace Application.Dtos.Responces
{
    public record ChartDataResponseDto
    {
        public List<string> Labels { get; init; }
        public List<ChartDatasetResponse> Datasets { get; init; }

        public ChartDataResponseDto(List<string> labels, List<ChartDatasetResponse> datasets)
        {
            Labels = labels;
            Datasets = datasets;
        }
        public ChartDataResponseDto() { }
    }
}




