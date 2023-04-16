

export class Review {
    constructor(
        private Name: string,
        private Rating: number,
        private Email: string,
        private GameId: number , 
        private Comment: string | undefined
    ) { }
}
