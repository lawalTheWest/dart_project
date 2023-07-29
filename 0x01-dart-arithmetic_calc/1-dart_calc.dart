import 'dart:io';

double dart_calc(double a, double b, String op)
{
	/* validating the operators and perfoming calculation */
	if (op == '+')
	{
		return (a + b);
	} /* end if */
	else if (op == '-')
	{
		return (a - b);
	} /* end else if */
	else if (op == '*')
	{
		return (a * b);
	} /* end else if */
	else if (op == '/')
	{
		if (b == 0)
		{
			throw Exception('Error: Divide by Zero!!! ');
			/* call the main function */
			return (dart_calc(a, b, op));
		} /* end if */
		else
		{
			return (a / b);
		} /* end else */
	} /* end else if */
	else
	{
		print("Invalid operator");
		return (dart_calc(a, b, op));
	} /* end else */
} /* End function */


int main()
{
	double result = 0;
	double a, b;
	String op;

	/* collect the first number */
	print("Enter the first number: ");
	a = double.parse(stdin.readLineSync()!);

	/* enter the second number */
	print("Enter the second number: ");
	b = double.parse(stdin.readLineSync()!);

	/* enter the operator */
	print("Enter the operator (+, -, *, /): ");
	op = stdin.readLineSync()!;

	/* perform calculation */
	try
	{
		result = dart_calc(a, b, op);
	} /* end try */
	on Exception catch (e)
	{
		print(e);
	} /* end exception */

	print("Result: $result");
	return (0);
} /* end function */
