package com.jin.poetry.common;

import java.util.List;

import com.jin.poetry.domain.User;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ActiverUser {

	private User User;
	
	private List<String> roles;
	
	private List<String> permissions;

}
