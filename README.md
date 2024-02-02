Soccer game 
user enters 3 options to shoot (left foot, right foot, head) other option is to exit 
user if prompted to try again if incorrect option is selected 
once shooting option is selected user has to enter name, team, nation, jersey number and age
Then user will win or loose the game randomly via a method 
the user will be told if they won or lost the game along with a prompt with all their entered info
the user has the chance to play again or to exit game at the end

The purpose of writing tests is to ensure that your code functions as expected and to catch any regressions that may occur as you modify or extend your codebase. In this case, the test is focusing on the play_shoot method within the Game class.

```assert_output(/What a goal!!! John Doe scores a wonderful goal!/) do
  @game.play_shoot
end
``` 
This part of the test is asserting that when play_shoot is called, it should produce output matching the specified pattern.

Overall, the purpose of this test is to verify that the play_shoot method in the Game class functions correctly when provided with specific input. If the test passes, it indicates that the method produces the expected output in response to the given input. If it fails, it suggests a problem with the implementation of the play_shoot method.


- Ruby version: `3.2.1`
