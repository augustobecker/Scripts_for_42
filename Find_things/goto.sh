#!/bin/bash

#
#                                                                            
#                                                        :::      ::::::::  
#   goto.sh                                             :+:      :+:    :+: 
#                                                    +:+ +:+         +:+     
#   By: acesar-l <acesar-l@student.42sp.org.br>    +#+  +:+       +#+        
#                                                +#+#+#+#+#+   +#+          
#   Created: 2021/02/19 23:58:10 by acesar-l          #+#    #+#             
#   Updated: 2021/02/19 23:58:41 by acesar-l         ###   ########.fr       
#                                                                            
# 

#	Run . ./goto.sh $FOLDER_YOU_WANNA_GO
#	And goto.sh will take you to this folder

   FOLDER=$1

    GREEN="\033[0;32m"
      RED="\033[0;31m"
	RESET="\033[0m"

FIND_PATH=$(find . -type d -name ${FOLDER})
  RESULTS=$(find . -type d -name ${FOLDER} | wc -l)

  if [ ${RESULTS} -ge 2 ]; 	then echo -e ${RED}"${RESULTS} folders found. Please, be more specific." ${RESET};	\
elif [ ${RESULTS} == 0 ]; 	   then echo -e ${RED}"Not found. Please, try again." ${RESET};						   	\
else 							           echo -e $GREEN"That's it! Here we go." $RESET && cd ${FIND_PATH} ; fi
