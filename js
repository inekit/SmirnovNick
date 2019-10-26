js maxchar

str=('ab1c1d1e1f1g1')
console.log(showMessage(str))
function showMessage(str) {
  const lang={}
for (const el of str) 
{
    lang[el]=lang[el]+1 || 1
}
let max=0
 let maxn='Нет букв';
for (const key in lang)
{
    if (lang[key]>max)
    {
        max=lang[key]
        maxn=key
    }
} 
return maxn;
}
js vowels
str=('abcdefghijklmnopqrstuvwxyz')
console.log(vowels(str))
function vowels(str) 
{
  str=str.toLowerCase()
  lang = ['a', 'e','i', 'o', 'u']
  let sum=0;
  for(const i of str)
  {
    if (lang.indexOf( i ) != -1 ){sum+=1;}

  }
  return sum
}
js piramide
n=('7')
vowels(n)
function vowels(nbr) 
{
  for (let i = 0; i < nbr; i++)
{ 
  
  console.log(' '.repeat(nbr-(2*i+1)/2)+'#'.repeat(2*i+1)+' '.repeat(nbr-(2*i+1)/2))
}
}
String.prototype.repeat = function(n) {
    return new Array(n+1).join(this);
}
js 
