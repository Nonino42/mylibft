# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hanmpark <hanmpark@student.42nice.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/08 16:40:47 by hanmpark          #+#    #+#              #
#    Updated: 2023/03/02 16:05:12 by hanmpark         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# <<<<<<<<<< presettings >>>>>>>>>> #
H_DIR = inc/
LIBFT_DIR = src/libft/
FTPRINTF_DIR = src/ft_printf/
GNL_DIR = src/get_next_line/
NAME = libft.a

# <<<<<<<<<< colors >>>>>>>>>> #
DEF = \033[0m
BOLD = \033[1m
CUR = \033[3m
UL = \033[4m

GRAY = \033[2;37m
GREEN = \033[1;32m

# <<<<<<<<<<<< sources and objects >>>>>>>>>> #
SRCS_LIBFT =	ft_bzero.c ft_isalnum.c ft_isalpha.c ft_isascii.c \
					ft_isdigit.c ft_isprint.c ft_memcpy.c ft_memset.c \
					ft_strlen.c ft_memmove.c ft_strlcpy.c ft_strlcat.c \
					ft_toupper.c ft_tolower.c ft_strchr.c ft_strrchr.c \
					ft_strncmp.c ft_memchr.c ft_memcmp.c ft_strnstr.c \
					ft_atoi.c ft_calloc.c ft_strdup.c ft_substr.c \
					ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c \
					ft_strmapi.c ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c \
					ft_putendl_fd.c ft_putnbr_fd.c ft_lstnew.c \
					ft_lstadd_front.c ft_lstsize.c ft_lstlast.c \
					ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c \
					ft_lstiter.c ft_lstmap.c ft_filelen.c ft_mapdup.c

SRCS_FTPRINTF =	def_flags.c format_hexa.c ft_printf.c print_basic.c \
					print_hexa.c specifier_filter.c treat_charflags.c \
					treat_intflags.c

SRCS_GNL =	get_next_line_utils.c get_next_line.c

SRCS =	${addprefix ${LIBFT_DIR}, ${SRCS_LIBFT}} \
		${addprefix ${FTPRINTF_DIR}, ${SRCS_FTPRINTF}} \
		${addprefix ${GNL_DIR}, ${SRCS_GNL}}

OBJS =	${SRCS:.c=.o}

# <<<<<<<<<< compiler >>>>>>>>>> #
CC = gcc
CFLAGS = -Wall -Wextra -Werror

%.o:%.c ${H_FILE}
	@${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

# <<<<<<<<<< rules >>>>>>>>>> #
all:	${NAME}

${NAME}:	${OBJS}
	@echo "\n${CUR}${GRAY}\t- Compiling...${DEF}"
	@ar rcs ${NAME} ${OBJS}
	@echo "${CUR}${BOLD}${GREEN}   ${UL}- Compiled -${DEF}\n"

clean:
	@echo "\n${CUR}${GRAY}\t- Removing object files...${DEF}"
	@rm -f ${OBJS}

fclean:	clean
	@echo "${CUR}${GRAY}\t- Removing ${BOLD}${NAME}...${DEF}\n"
	@rm -f ${NAME}
	@echo "${CUR}${BOLD}${GREEN}   ${UL}- Cleaned -${DEF}\n"

re:	fclean all

.PHONY: all clean fclean re bonus
