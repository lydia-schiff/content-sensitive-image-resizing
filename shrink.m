function [ J ] = shrink( I, num_rows_removed, num_columns_removed )


for k = 1:num_rows_removed
    I = remove_horizontal_seam(I,horizontal_seam(I));
end
I = permute(I,[2 1 3]);
for k = 1:num_columns_removed
    I = remove_horizontal_seam(I,horizontal_seam(I));
end
J = permute(I,[2 1 3]);
end

