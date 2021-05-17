using System;

namespace LoyaltyProgram.Users
{
  //public class LoyaltyProgramSettings
  //{
  //  public string[] Interests { get; set; } = new string[0];
  //}

    public record LoyaltyProgramSettings()
    {
        public LoyaltyProgramSettings(string[] interests) : this()
        {
            this.Interests = interests;
        }

        public string[] Interests { get; init; } = Array.Empty<string>();
    }
}