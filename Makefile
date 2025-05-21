# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bdjoco <bdjoco@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/05/15 11:40:39 by bdjoco            #+#    #+#              #
#    Updated: 2025/05/21 11:59:56 by bdjoco           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRC = src/print_type.c \
		src/print_type_bis.c \
		src/def_type.c \
		src/def_type_bis.c \
		src/ft_printf.c

LIBFT_DIR = ./lib/Libft
LIBFT = $(LIBFT_DIR)/libft.a

OBJ = $(SRC:.c=.o)
CC = cc
CFLAGS = -Wall -Wextra -Werror
AR = ar rcs
RM = rm -f

all : $(NAME)

$(NAME) : tmp_printf.a $(LIBFT)
	ar -rcT $(NAME) $(LIBFT) tmp_printf.a

tmp_printf.a : $(OBJ)
	$(AR) $@ $(OBJ)

$(LIBFT) :
	$(MAKE) -C $(LIBFT_DIR)

%.o: %.c
	$(CC) $(CFLAGS) -I . -c $< -o $@

clean :
	$(MAKE) -C $(LIBFT_DIR) clean
	$(RM) $(OBJ) tmp_printf.a

fclean : clean
	$(MAKE) -C $(LIBFT_DIR) fclean
	$(RM) $(NAME)

re : fclean all

.PHONY: all clean fclean re
