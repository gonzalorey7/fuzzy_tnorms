function advanced_plot(a, b, Is, plot_title, z_label)
    figure;
    surf(a, b, Is, 'EdgeColor', 'none');
    xlabel('a');
    ylabel('b');
    zlabel(z_label);
    title(plot_title);
    colormap(jet);
    colorbar;
    view(3);
end
