<form method="post">
    <label for="idCategory">Kategoria:</label>
    <select name="idCategory" name="idCategory">
        <option>wybierz</option>
        {foreach $categories as $category}
            <option value="{$category['id']}">{$category['name']}</option>
        {/foreach}
    </select>
    <button type="submit">Wybierz</button>
</form>