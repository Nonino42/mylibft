/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: hanmpark <hanmpark@student.42nice.fr>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/11 12:04:09 by hanmpark          #+#    #+#             */
/*   Updated: 2023/02/28 14:35:45 by hanmpark         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../inc/libft.h"

char	*ft_strchr(const char *s, int c)
{
	if (!c || c == 1024)
		return ((char *)s + ft_strlen(s));
	while (*s && (char)c)
	{
		if (*s == (char)c)
			return ((char *)s);
		s++;
	}
	return (0);
}
