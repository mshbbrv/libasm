# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: thjonell <thjonell@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/03/26 21:12:21 by thjonell          #+#    #+#              #
#    Updated: 2021/03/26 21:18:11 by thjonell         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME		= libasm.a

NA			= nasm

RM			= rm -rf

FLAGS		= -f macho64

SOURCE		= ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s \
			ft_strdup.s

OBJECTS 	= ${SOURCE:.s=.o}

%.o: %.s
			${NA} ${FLAGS} $<

all:		${NAME}

$(NAME):	${OBJECTS}
			ar rc ${NAME} ${OBJECTS}
			ranlib ${NAME}


clean:
			${RM} ${OBJECTS}

fclean:		clean
			${RM} ${NAME}

re:			fclean all

.PHONY:		all clean fclean re