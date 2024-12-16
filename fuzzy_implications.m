function implication = fuzzy_implication(a, b, tnorm_type, tnorm_param)
    % Calcula las implicaciones difusas según diferentes tipos
    switch upper(tnorm_type)
        case 'GODEL'
            implication = max(1 - a, b);
        case 'LUKASIEWICZ'
            implication = min(1, 1 - a + b);
        case 'ZADEH'
            implication = max(min(a, b), 1 - a);
        case 'YAGER'
            p = tnorm_param;
            implication = min(1, ((1 - a).^p + b.^p).^(1/p));
        otherwise
            error('Tipo de implicación no soportado.');
    end
end