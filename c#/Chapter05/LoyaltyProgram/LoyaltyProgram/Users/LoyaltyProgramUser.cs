namespace LoyaltyProgram.Users
{
  using System;

  public record LoyaltyProgramUser(int Id, string Name, int LoyaltyPoints, LoyaltyProgramSettings Settings);


}