<div class="css-1m96lhp"><div class="css-u8svcc"><div><div class="_15vzQlp3FJ8f94suLiPCPf ureact-markdown "><hr>
<h1 id="reference">Reference</h1>
<p>For reference, here's a list of all the tables in the zoo database:</p>
<p></p><h3>animals</h3>
This table lists individual animals in the zoo. Each animal has only one row. There may be multiple animals with the same name, or even multiple animals with the same name and species.<p></p>
<ul>
<li>name — the animal's name (example: 'George')
</li><li>species — the animal's species (example: 'gorilla')
</li><li>birthdate — the animal's date of birth (example: '1998-05-18')
</li></ul>

<p></p><h3>diet</h3>
This table matches up species with the foods they eat. Every species in the zoo eats at least one sort of food, and many eat more than one. If a species eats more than one food, there will be more than one row for that species.<p></p>
<ul>
<li>species — the name of a species (example: 'hyena')
</li><li>food — the name of a food that species eats (example: 'meat')
</li></ul>

<p></p><h3>taxonomy</h3>
This table gives the (partial) biological taxonomic names for each species in the zoo. It can be used to find which species are more closely related to each other evolutionarily.<p></p>
<ul>
<li>name — the common name of the species (e.g. 'jackal')
</li><li>species — the taxonomic species name (e.g. 'aureus')
</li><li>genus — the taxonomic genus name (e.g. 'Canis')
</li><li>family — the taxonomic family name (e.g. 'Canidae')
</li><li>t_order — the taxonomic order name (e.g. 'Carnivora')
</li></ul>

<p>If you've never heard of this classification, don't worry about it; the details won't be necessary for this course. But if you're curious, Wikipedia articles <a target="_blank" href="http://en.wikipedia.org/wiki/Biological_classification">Taxonomy</a> and <a target="_blank" href="http://en.wikipedia.org/wiki/Biological_classification">Biological classification</a> may help. </p>
<p></p><h3>ordernames</h3>
This table gives the common names for each of the taxonomic orders in the <strong>taxonomy</strong> table.<p></p>
<ul>
<li>t_order — the taxonomic order name (e.g. 'Cetacea')
</li><li>name — the common name (e.g. 'whales and dolphins')
</li></ul>

<h2>The SQL for it</h2>

<p>And here are the SQL commands that were used to create those tables. We won't cover the <strong>create table</strong> command until lesson 4, but it may be interesting to look at:</p>
<pre><code class="lang-sql"><span class="hljs-operator"><span class="hljs-keyword">create</span> <span class="hljs-keyword">table</span> animals (  
       <span class="hljs-keyword">name</span> <span class="hljs-built_in">text</span>,
       species <span class="hljs-built_in">text</span>,
       birthdate <span class="hljs-built_in">date</span>);</span>

<span class="hljs-operator"><span class="hljs-keyword">create</span> <span class="hljs-keyword">table</span> diet (
       species <span class="hljs-built_in">text</span>,
       food <span class="hljs-built_in">text</span>);</span>  

<span class="hljs-operator"><span class="hljs-keyword">create</span> <span class="hljs-keyword">table</span> taxonomy (
       <span class="hljs-keyword">name</span> <span class="hljs-built_in">text</span>,
       species <span class="hljs-built_in">text</span>,
       genus <span class="hljs-built_in">text</span>,
       family <span class="hljs-built_in">text</span>,
       t_order <span class="hljs-built_in">text</span>);</span> 

<span class="hljs-operator"><span class="hljs-keyword">create</span> <span class="hljs-keyword">table</span> ordernames (
       t_order <span class="hljs-built_in">text</span>,
       <span class="hljs-keyword">name</span> <span class="hljs-built_in">text</span>);</span>
</code></pre>
<p><em>Remember: In SQL, we always put string and date values inside single quotes.</em></p>
</div></div></div></div>