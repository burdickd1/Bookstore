package com.qa.services;

public interface SearchService {
/*
SELECT * FROM book 
where MATCH (e_bookisbn, paperisbn, publisher, title)
AGAINST ('Veribet' IN NATURAL LANGUAGE MODE)	
 */
	
/*
SELECT *, 
MATCH (e_bookisbn, paperisbn, publisher, title, description)
AGAINST ('+cras*' IN BOOLEAN MODE) AS score
FROM book 
where MATCH (e_bookisbn, paperisbn, publisher, title, description)
AGAINST ('+cras*' IN BOOLEAN MODE)
 */
	
/*

 */
	
public static int distance(String a, String b){
	a = a.toLowerCase();
	b = b.toLowerCase();
	
	int[] costs = new int [b.length() + 1];
	for(int j = 0; j < costs.length; ++j){
		costs[j] = j;
	}
	for(int i = 1; i <= b.length(); ++i){
		costs[0] = i;
		int nw = i - 1;
		for(int j = 1; j <= b.length(); ++j){
			int cj = Math.min(1 + Math.min(costs[j], costs[j - 1]), a.charAt(i -1) == b.charAt(j - 1) ? nw : nw + 1);
			nw = costs[j];
			costs[j] = cj;
		}
	}
	return costs[b.length()];
}
}
