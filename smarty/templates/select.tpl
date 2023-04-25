<form method="post">
    <label for="idCategory" class="form-label">Kategoria:</label>
    <select name="idCategory" name="idCategory" class="form-select">
        <option value="0">wybierz</option>
        {foreach $categories as $category}
            <option value="{$category['id']}">{$category['name']}</option>
        {/foreach}
    </select>
    <button type="submit" class="my-2 btn btn-danger">Wybierz</button>
</form>