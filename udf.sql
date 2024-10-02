--!jinja 
    
use database {{ env }};
use schema {{ schema }};

create or replace function ADD_ONE(NUM INT)
returns int 
language python 
runtime_version = '3.11' 
handler = 'addone_py' 
as 
$$ 
def addone_py(i): 
    return i+1 
$$; 
