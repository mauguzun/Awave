namespace Application.Dtos
{
    public record DataTablesResponseDto<T>
    {
        public int RecordsTotal { get; init; }
        public int RecordsFiltered { get; init; }
        public List<T> Data { get; init; }

        public DataTablesResponseDto(int recordsTotal, int recordsFiltered, List<T> data)
        {
            RecordsTotal = recordsTotal;
            RecordsFiltered = recordsFiltered;
            Data = data;
        }
        public DataTablesResponseDto() { }
    }
}

