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