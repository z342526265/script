def my_mkdir(dir_path)
    unless File.exist? dir_path
        my_mkdir(dir_path[0,dir_path.rindex("/")]) if dir_path.rindex("/")
        p dir_path
        p "99999999999999999"
        Dir::mkdir dir_path
    end
end

my_mkdir 'a/b/c/d/e'
