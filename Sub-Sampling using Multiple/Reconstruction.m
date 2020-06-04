function [Reconstructed_im] = Reconstruction(sub_img, reconstruction_size)

%[x,~] = size(m);
Reconstructed_im = uint8(zeros(reconstruction_size));

[sub_img_x, sub_img_y] = size(sub_img);

increase_ratio = reconstruction_size / sub_img_x;

rr = 1;
rc = 1;

for row = 1:sub_img_x
    for col = 1:sub_img_y
        
        if rc == reconstruction_size + 1
            rr = rr + increase_ratio;
            rc = 1;
        end
        Reconstructed_im(rr : rr+1, rc : rc+1) = sub_img(row, col);
        rc = rc + increase_ratio;
        
    end
end

end




% function [r] = Reconstruction(n,m,x,a)
%
% [x,~] = size(m);
% r = uint8(zeros(size(m)));
% [a, b] = size(n);
%
% rr = 1;
% rc = 1;
%
% for row = 1:a
%     for col = 1:b
%
%         if rc ==x+1
%             rr = rr+2;
%             rc = 1;
%         end
%         r(rr:rr+1,rc:rc+1) = n(row,col);
%         rc = rc+2;
%
%      end
% end
%
% end