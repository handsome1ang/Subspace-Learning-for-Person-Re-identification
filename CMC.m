function acc = CMC(dist,limit)

    [~,index] = sort(dist,2);
    rank = zeros(size(dist,1),1);

    for i = 1:size(index,1)
        rank(i) = find(index(i,:) == i);
    end

    acc = zeros(1,limit);
    for i = 1:limit
        acc(i) = 100*mean(rank<=i);
    end

    plot(1:limit, acc,'LineWidth',3);
    xlabel('Rank')
    ylabel('Accuracy')
    title('CMC curve')

end
