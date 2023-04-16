using Entities.Models;
using FluentValidation;

namespace Application.Validators
{
    public class ReviewRequestValidator : AbstractValidator<Review>
    {
        public ReviewRequestValidator()
        {
            RuleFor(p => p.Name)
                .NotEmpty().WithMessage("{PropertyName} should be not empty");

            RuleFor(p => p.Email)
                .NotEmpty().WithMessage("{PropertyName} should be not empty")
                .EmailAddress().WithMessage("A valid email is required");

            RuleFor(p => p.GameId)
               .NotNull().WithMessage("{PropertyName} should be not empty");

            RuleFor(p => (int)p.Rating)
                 .InclusiveBetween(1,10)
                 .WithMessage("{PropertyName} shouldn't be less then 10 and greater then 10");
                
        }
    }
}
