/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: eamsalem <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/20 13:53:13 by eamsalem          #+#    #+#             */
/*   Updated: 2024/04/20 17:26:41 by eamsalem         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H

# define FT_PRINTF_H

# include <stddef.h>
# include <unistd.h>
# include <stdlib.h>
# include <stdio.h>

int	ft_putchar_count(char c);

int	ft_putstr_count(char *s);

int	ft_putnbr_count(int n);

int	chrsetcmp(char c, char *set);

int	ft_putnbr_base(unsigned int nbr, char *base);

int	ft_putuslong_base(unsigned long nbr, char *base);

int	ft_putaddr(void *ptr);

int	ft_putusnbr(unsigned int n);

int	ft_printf(const char *format, ...);

int	ft_strlen(const char *str);

#endif
