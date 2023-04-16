export interface DataTablesResponseDto<T> {
    recordsTotal: number
    recordsFiltered: number
    data: Array<T>
}