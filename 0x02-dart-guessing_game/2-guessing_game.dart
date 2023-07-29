import 'dart:io';
import 'dart:math';

void main()
{
	Random random = Random();
	int guess;
	int randNum;
	int guessLimit = 3;
	int guessAttempt = 0;
	int attemptsLeft;

	while (guessAttempt < guessLimit)
	{
		randNum = random.nextInt(5) + 1;

		print("Guess a number between 1 and 5 (inclusive): ");
		guess = int.parse(stdin.readLineSync()!);

		print("Your guess: $guess \n");
		if (guess >= 1 && guess <= 5)
		{
			if (guess == randNum)
			{
				print("Congratulations! \n Your guess: $guess\n"
				"Required guess: $randNum\n");
				break;
			} /* end if */
			else
			{
				guessAttempt++;
				attemptsLeft = (guessLimit - guessAttempt);
				print("Wrong guess! \n"
					"Your guess: $guess \n"
					"Required guess: $randNum \n"
					"You have $attemptsLeft "
					"attempt(s) left.\n"
					"Try again");
			} /* end else */
		} /* end if */
		else
		{
			print("Invalid entry!\n");
		} /* end else */
	} /* end while */

	if (guessAttempt == guessLimit)
	{
		print("You have reached "
			"the maximum number of attempts.\n"
			"Game over!\n");
	} /* end if */
} /* end function */
