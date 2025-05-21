/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bdjoco <bdjoco@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/15 08:55:01 by bdjoco            #+#    #+#             */
/*   Updated: 2025/05/21 11:47:35 by bdjoco           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include "lib/Libft/libft.h"
# include <unistd.h>
# include <string.h>
# include <stdio.h>
# include <stdarg.h>
# include <ctype.h>
# include <stdint.h>

int		ft_printf(const	char *str, ...);
int		t_is_str(va_list args);
int		t_is_int(va_list args);
int		t_is_hex(va_list args);
int		t_is_hex_up(va_list args);
int		t_is_void_p(va_list args);
int		t_is_uns_int(va_list args);
int		ft_putchar_fd_bis(char c);

void	ft_putnbr_hex(int n);
void	ft_putnbr_hex_up(int n);
void	ft_putnbr_hex_addr(unsigned long n);
void	t_is_char(va_list args);
void	ft_putnbr_uns(unsigned int n);

#endif
