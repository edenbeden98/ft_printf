# _**************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: eamsalem <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/04/18 17:30:33 by eamsalem          #+#    #+#              #
#    Updated: 2024/04/24 10:32:15 by eamsalem         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

CC = cc
CFLAGS = -Wall -Werror -Wextra

OBJDIR = ./build

SRCS =	ft_printf.c chrsetcmp.c ft_putaddr.c ft_putnbr_base.c \
		ft_putchar_count.c ft_putnbr_count.c ft_putstr_count.c \
		ft_putuslong_base.c ft_putusnbr.c ft_strlen.c

OBJS = $(SRCS:%.c=$(OBJDIR)/%.o)

all: $(OBJDIR) $(NAME)


$(OBJDIR):
	@mkdir -p $(OBJDIR)

$(OBJDIR)/%.o: %.c
	@mkdir -p $(@D)
	$(CC) $(CFLAGS) -c $< -o $@

${NAME}: $(OBJS)
	@ar rcs $(NAME) $(OBJS)

clean:
	@rm -rf $(OBJDIR)

fclean: clean
	@rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re $(LIBFT_OBJS)
	
