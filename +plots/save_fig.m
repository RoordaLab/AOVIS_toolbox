function save_fig(save_name, fig, transparent, file_type)
    if nargin < 3
        transparent = 1;
    end
    if nargin < 4
        file_type = 'eps';
    end
    
    % -m2 magnify 2x for good resolution
    if transparent
        set(gca, 'Color', 'none'); 
        %set(gcf, 'Color', 'white');
        %export_fig(save_name, ['-' file_type], '-m2', '-transparent', fig);
        print(fig, save_name, '-depsc', '-r300')
    else
        export_fig(save_name, ['-' file_type], '-m2', fig);
    end
    
end
    