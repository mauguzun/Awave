namespace Application.Dtos
{
    public record ChartData
    {
        public List<string> Labels { get; init; }
        public List<ChartDataset> Datasets { get; init; }

        public ChartData(List<string> labels, List<ChartDataset> datasets)
        {
            Labels = labels;
            Datasets = datasets;
        }
        public ChartData() { }
    }
}




