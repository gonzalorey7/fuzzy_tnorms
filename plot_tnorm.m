
function plot_tnorm(a,b,Is,plot_title,z_label,m,n,selected_plot)
    subplot(m,n,selected_plot);
    surf(a,b,Is);
    xlabel('a');
    ylabel('b');
    zlabel(z_label);
    grid minor;
    title(plot_title);
    axis square;
end