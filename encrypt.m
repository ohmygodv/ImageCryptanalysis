function [ output,temp ] = encrypt( input,size )
    load mydata
    temp=mod(sum(input),256);
    DNA_P=encode(input,Ry);
    DNA_np=yihuo(DNA_R,DNA_P);
    New_P=decode(DNA_np,Rx);
    NP=num_yihuo(New_P,temp);
    C=zeros(1,size^2);
    for i=1:size^2
        C(Loc(i))=NP(i);
    end
    output=C;
end

