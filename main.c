#include <stdio.h>

int		global_var = 42;

void	print_global_var(void)
{
	printf("Global variable: %d\n", global_var);
}

int	main(void)
{
	print_global_var();
	return (0);
}
