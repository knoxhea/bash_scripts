# Usage:

<ol> 
<li>Create an access token to allow the script to create and write to a repo</li>

<li>set the variables as written in bashrc
    (GITHUB_USERNAME, GITHUB_TOKEN_AUTOMATED_PROJ)</li>
<li> change the variables in the script as necessary (This is useful if you want to define a different project directory)
</li>


<U>NOTE:</U><p>  It is recommended not to put the token in plain text.  Instead try to encrypt it away.</p>


<li>Make the script executable.</li>

<li> Run
<ul><li>Run with ./create.sh {NAME_OF_PROJECT}</li>

<li>Alternatively, if it is desired to run this script as just "create {NAME_OF_PROJECT}" then creating a function in your .bashrc file seems like one of the best ways to do it

example:

```
function create() {
 source ~/create.sh $1
}

export -f createPython
```
</li>
</ol>
</ol>

# Future Enhancements
Upload access token and username into a password manager and then have the password manager add it rather than having it in plain text somewhere...