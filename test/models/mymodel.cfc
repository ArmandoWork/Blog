/**
* I am a new Model Object
*/
component accessors="true"{
	
    // Properties
    

    /**
     * Constructor
     */
	mymodel function init(){
		
		return this;
	}

	function getblog ()
	{
		var myQuery = queryExecute(
			"SELECT * from blog" 
			 
			);
		return myquery;
	}
	
	function addblog(var title, var Author, var Content, var Category)
	{
		var time = now();
		var myQuery = queryExecute(
			"INSERT INTO blog(blogid, title, Author, Content, Category, dateposted) VALUES ("", title, Author, Content, Category, time) ");
	}
}
