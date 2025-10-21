.class public final synthetic Lj$/util/stream/Stream$Wrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/stream/Stream;


# instance fields
.field final synthetic wrappedValue:Lj$/util/stream/Stream;


# direct methods
.method private synthetic constructor <init>(Lj$/util/stream/Stream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/stream/Stream$Wrapper;->wrappedValue:Lj$/util/stream/Stream;

    return-void
.end method

.method public static synthetic convert(Lj$/util/stream/Stream;)Ljava/util/stream/Stream;
    .locals 1

    new-instance v0, Lj$/util/stream/Stream$Wrapper;

    invoke-direct {v0, p0}, Lj$/util/stream/Stream$Wrapper;-><init>(Lj$/util/stream/Stream;)V

    return-object v0
.end method


# virtual methods
.method public final allMatch(Ljava/util/function/Predicate;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/stream/Stream$Wrapper;->wrappedValue:Lj$/util/stream/Stream;

    invoke-static {p1}, Lj$/util/function/Supplier$VivifiedWrapper;->convert(Ljava/util/function/Predicate;)Lj$/util/function/Predicate;

    move-result-object p1

    check-cast v0, Lj$/util/stream/ReferencePipeline;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lj$/util/stream/MatchOps$MatchKind;->ALL:Lj$/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v1}, Lj$/util/stream/Node$-CC;->makeRef(Lj$/util/function/Predicate;Lj$/util/stream/MatchOps$MatchKind;)Lj$/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj$/util/stream/AbstractPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final anyMatch(Ljava/util/function/Predicate;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/stream/Stream$Wrapper;->wrappedValue:Lj$/util/stream/Stream;

    invoke-static {p1}, Lj$/util/function/Supplier$VivifiedWrapper;->convert(Ljava/util/function/Predicate;)Lj$/util/function/Predicate;

    move-result-object p1

    check-cast v0, Lj$/util/stream/ReferencePipeline;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lj$/util/stream/MatchOps$MatchKind;->ANY:Lj$/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v1}, Lj$/util/stream/Node$-CC;->makeRef(Lj$/util/function/Predicate;Lj$/util/stream/MatchOps$MatchKind;)Lj$/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj$/util/stream/AbstractPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final synthetic close()V
    .locals 1

    iget-object v0, p0, Lj$/util/stream/Stream$Wrapper;->wrappedValue:Lj$/util/stream/Stream;

    check-cast v0, Lj$/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Lj$/util/stream/AbstractPipeline;->close()V

    return-void
.end method

.method public final collect(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/Stream$Wrapper;->wrappedValue:Lj$/util/stream/Stream;

    invoke-static {p1}, Lj$/util/function/Supplier$VivifiedWrapper;->convert(Ljava/util/function/Supplier;)Lj$/util/function/Supplier;

    move-result-object p1

    invoke-static {p2}, Lj$/util/function/Supplier$VivifiedWrapper;->convert(Ljava/util/function/BiConsumer;)Lj$/util/function/BiConsumer;

    move-result-object p2

    invoke-static {p3}, Lj$/util/function/Supplier$VivifiedWrapper;->convert(Ljava/util/function/BiConsumer;)Lj$/util/function/BiConsumer;

    move-result-object p3

    check-cast v0, Lj$/util/stream/ReferencePipeline;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-static {p1, p2, p3}, Lj$/util/stream/Node$-CC;->makeRef(Lj$/util/function/Supplier;Lj$/util/function/BiConsumer;Lj$/util/function/BiConsumer;)Lj$/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj$/util/stream/AbstractPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final collect(Ljava/util/stream/Collector;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lj$/util/stream/Stream$Wrapper;->wrappedValue:Lj$/util/stream/Stream;

    invoke-static {p1}, Lj$/util/stream/Collector$VivifiedWrapper;->convert(Ljava/util/stream/Collector;)Lj$/util/stream/Collector;

    move-result-object p1

    check-cast v0, Lj$/util/stream/ReferencePipeline;

    .line 2
    invoke-virtual {v0}, Lj$/util/stream/AbstractPipeline;->isParallel()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lj$/util/stream/Collector$VivifiedWrapper;

    invoke-virtual {v1}, Lj$/util/stream/Collector$VivifiedWrapper;->characteristics()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Lj$/util/stream/Collector$Characteristics;->CONCURRENT:Lj$/util/stream/Collector$Characteristics;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lj$/util/stream/AbstractPipeline;->isOrdered()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lj$/util/stream/Collector$VivifiedWrapper;->characteristics()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Lj$/util/stream/Collector$Characteristics;->UNORDERED:Lj$/util/stream/Collector$Characteristics;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {v1}, Lj$/util/stream/Collector$VivifiedWrapper;->supplier()Lj$/util/function/Supplier;

    move-result-object v2

    check-cast v2, Lj$/util/function/Supplier$VivifiedWrapper;

    invoke-virtual {v2}, Lj$/util/function/Supplier$VivifiedWrapper;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Lj$/util/stream/Collector$VivifiedWrapper;->accumulator()Lj$/util/function/BiConsumer;

    move-result-object v1

    new-instance v3, Lj$/util/stream/MatchOps$$ExternalSyntheticLambda0;

    const/4 v4, 0x5

    invoke-direct {v3, v1, v2, v4}, Lj$/util/stream/MatchOps$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Lj$/util/stream/ReferencePipeline;->forEach(Lj$/util/function/Consumer;)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, p1

    check-cast v1, Lj$/util/stream/Collector$VivifiedWrapper;

    invoke-virtual {v1}, Lj$/util/stream/Collector$VivifiedWrapper;->supplier()Lj$/util/function/Supplier;

    move-result-object v5

    invoke-virtual {v1}, Lj$/util/stream/Collector$VivifiedWrapper;->accumulator()Lj$/util/function/BiConsumer;

    move-result-object v4

    invoke-virtual {v1}, Lj$/util/stream/Collector$VivifiedWrapper;->combiner()Lj$/util/function/BinaryOperator;

    move-result-object v3

    new-instance v7, Lj$/util/stream/ReduceOps$3;

    const/4 v2, 0x1

    move-object v1, v7

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lj$/util/stream/ReduceOps$3;-><init>(ILj$/util/function/BinaryOperator;Lj$/util/function/BiConsumer;Lj$/util/function/Supplier;Lj$/util/stream/Collector;)V

    .line 4
    invoke-virtual {v0, v7}, Lj$/util/stream/AbstractPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    check-cast p1, Lj$/util/stream/Collector$VivifiedWrapper;

    invoke-virtual {p1}, Lj$/util/stream/Collector$VivifiedWrapper;->characteristics()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lj$/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Lj$/util/stream/Collector$Characteristics;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lj$/util/stream/Collector$VivifiedWrapper;->finisher()Lj$/util/function/Function;

    move-result-object p1

    invoke-interface {p1, v2}, Lj$/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_1
    return-object v2
.end method

.method public final count()J
    .locals 2

    iget-object v0, p0, Lj$/util/stream/Stream$Wrapper;->wrappedValue:Lj$/util/stream/Stream;

    check-cast v0, Lj$/util/stream/ReferencePipeline;

    sget-object v1, Lj$/util/stream/FindOps$$ExternalSyntheticLambda1;->INSTANCE$12:Lj$/util/stream/FindOps$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Lj$/util/stream/ReferencePipeline;->mapToLong(Lj$/util/function/ToLongFunction;)Lj$/util/stream/LongStream;

    move-result-object v0

    check-cast v0, Lj$/util/stream/LongPipeline;

    invoke-virtual {v0}, Lj$/util/stream/LongPipeline;->sum()J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic distinct()Ljava/util/stream/Stream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/Stream$Wrapper;->wrappedValue:Lj$/util/stream/Stream;

    check-cast v0, Lj$/util/stream/ReferencePipeline;

    invoke-virtual {v0}, Lj$/util/stream/ReferencePipeline;->distinct()Lj$/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/Stream$Wrapper;->convert(Lj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;
    .locals 7

    iget-object v0, p0, Lj$/util/stream/Stream$Wrapper;->wrappedValue:Lj$/util/stream/Stream;

    invoke-static {p1}, Lj$/util/function/Supplier$VivifiedWrapper;->convert(Ljava/util/function/Predicate;)Lj$/util/function/Predicate;

    move-result-object v5

    move-object v2, v0

    check-cast v2, Lj$/util/stream/ReferencePipeline;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lj$/util/stream/IntPipeline$4;

    sget v4, Lj$/util/stream/StreamOpFlag;->NOT_SIZED:I

    const/4 v3, 0x1

    const/4 v6, 0x4

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lj$/util/stream/IntPipeline$4;-><init>(Lj$/util/stream/AbstractPipeline;IILjava/lang/Object;I)V

    .line 2
    new-instance v0, Lj$/util/stream/Stream$Wrapper;

    invoke-direct {v0, p1}, Lj$/util/stream/Stream$Wrapper;-><init>(Lj$/util/stream/Stream;)V

    return-object v0
.end method

.method public final findAny()Ljava/util/Optional;
    .locals 8

    iget-object v0, p0, Lj$/util/stream/Stream$Wrapper;->wrappedValue:Lj$/util/stream/Stream;

    check-cast v0, Lj$/util/stream/ReferencePipeline;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    new-instance v7, Lj$/util/stream/FindOps$FindOp;

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v4

    sget-object v5, Lj$/util/stream/Node$$ExternalSyntheticLambda0;->INSTANCE$9:Lj$/util/stream/Node$$ExternalSyntheticLambda0;

    sget-object v6, Lj$/util/stream/FindOps$$ExternalSyntheticLambda7;->INSTANCE:Lj$/util/stream/FindOps$$ExternalSyntheticLambda7;

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lj$/util/stream/FindOps$FindOp;-><init>(ZILjava/lang/Object;Lj$/util/function/Predicate;Lj$/util/function/Supplier;)V

    .line 2
    invoke-virtual {v0, v7}, Lj$/util/stream/AbstractPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/Optional;

    .line 3
    invoke-static {v0}, Lj$/util/OptionalConversions;->convert(Lj$/util/Optional;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public final findFirst()Ljava/util/Optional;
    .locals 8

    iget-object v0, p0, Lj$/util/stream/Stream$Wrapper;->wrappedValue:Lj$/util/stream/Stream;

    check-cast v0, Lj$/util/stream/ReferencePipeline;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    new-instance v7, Lj$/util/stream/FindOps$FindOp;

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v4

    sget-object v5, Lj$/util/stream/Node$$ExternalSyntheticLambda0;->INSTANCE$9:Lj$/util/stream/Node$$ExternalSyntheticLambda0;

    sget-object v6, Lj$/util/stream/FindOps$$ExternalSyntheticLambda7;->INSTANCE:Lj$/util/stream/FindOps$$ExternalSyntheticLambda7;

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lj$/util/stream/FindOps$FindOp;-><init>(ZILjava/lang/Object;Lj$/util/function/Predicate;Lj$/util/function/Supplier;)V

    .line 2
    invoke-virtual {v0, v7}, Lj$/util/stream/AbstractPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/Optional;

    .line 3
    invoke-static {v0}, Lj$/util/OptionalConversions;->convert(Lj$/util/Optional;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public final flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;
    .locals 7

    iget-object v0, p0, Lj$/util/stream/Stream$Wrapper;->wrappedValue:Lj$/util/stream/Stream;

    invoke-static {p1}, Lj$/util/function/Function$VivifiedWrapper;->convert(Ljava/util/function/Function;)Lj$/util/function/Function;

    move-result-object v5

    move-object v2, v0

    check-cast v2, Lj$/util/stream/ReferencePipeline;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lj$/util/stream/ReferencePipeline$3;

    sget v0, Lj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v0, v1

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v0, v1

    const/4 v3, 0x1

    const/4 v6, 0x1

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lj$/util/stream/ReferencePipeline$3;-><init>(Lj$/util/stream/AbstractPipeline;IILj$/util/function/Function;I)V

    .line 2
    new-instance v0, Lj$/util/stream/Stream$Wrapper;

    invoke-direct {v0, p1}, Lj$/util/stream/Stream$Wrapper;-><init>(Lj$/util/stream/Stream;)V

    return-object v0
.end method

.method public final flatMapToDouble(Ljava/util/function/Function;)Ljava/util/stream/DoubleStream;
    .locals 7

    iget-object v0, p0, Lj$/util/stream/Stream$Wrapper;->wrappedValue:Lj$/util/stream/Stream;

    invoke-static {p1}, Lj$/util/function/Function$VivifiedWrapper;->convert(Ljava/util/function/Function;)Lj$/util/function/Function;

    move-result-object v5

    move-object v2, v0

    check-cast v2, Lj$/util/stream/ReferencePipeline;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lj$/util/stream/IntPipeline$6;

    sget v0, Lj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v0, v1

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v0, v1

    const/4 v3, 0x1

    const/4 v6, 0x7

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lj$/util/stream/IntPipeline$6;-><init>(Lj$/util/stream/AbstractPipeline;IILjava/lang/Object;I)V

    .line 2
    invoke-static {p1}, Lj$/util/stream/DoubleStream$Wrapper;->convert(Lj$/util/stream/DoubleStream;)Ljava/util/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapToInt(Ljava/util/function/Function;)Ljava/util/stream/IntStream;
    .locals 7

    iget-object v0, p0, Lj$/util/stream/Stream$Wrapper;->wrappedValue:Lj$/util/stream/Stream;

    invoke-static {p1}, Lj$/util/function/Function$VivifiedWrapper;->convert(Ljava/util/function/Function;)Lj$/util/function/Function;

    move-result-object v5

    move-object v2, v0

    check-cast v2, Lj$/util/stream/ReferencePipeline;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lj$/util/stream/IntPipeline$3;

    sget v0, Lj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v0, v1

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v0, v1

    const/4 v3, 0x1

    const/4 v6, 0x7

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lj$/util/stream/IntPipeline$3;-><init>(Lj$/util/stream/AbstractPipeline;IILjava/lang/Object;I)V

    .line 2
    invoke-static {p1}, Lj$/util/stream/IntStream$Wrapper;->convert(Lj$/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object p1

    return-object p1
.end method

.method public final flatMapToLong(Ljava/util/function/Function;)Ljava/util/stream/LongStream;
    .locals 7

    iget-object v0, p0, Lj$/util/stream/Stream$Wrapper;->wrappedValue:Lj$/util/stream/Stream;

    invoke-static {p1}, Lj$/util/function/Function$VivifiedWrapper;->convert(Ljava/util/function/Function;)Lj$/util/function/Function;

    move-result-object v5

    move-object v2, v0

    check-cast v2, Lj$/util/stream/ReferencePipeline;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lj$/util/stream/IntPipeline$5;

    sget v0, Lj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v0, v1

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v0, v1

    const/4 v3, 0x1

    const/4 v6, 0x6

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lj$/util/stream/IntPipeline$5;-><init>(Lj$/util/stream/AbstractPipeline;IILjava/lang/Object;I)V

    .line 2
    invoke-static {p1}, Lj$/util/stream/LongStream$Wrapper;->convert(Lj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic forEach(Ljava/util/function/Consumer;)V
    .locals 1

    iget-object v0, p0, Lj$/util/stream/Stream$Wrapper;->wrappedValue:Lj$/util/stream/Stream;

    invoke-static {p1}, Lj$/util/function/Consumer$VivifiedWrapper;->convert(Ljava/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/stream/Stream;->forEach(Lj$/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic forEachOrdered(Ljava/util/function/Consumer;)V
    .locals 1

    iget-object v0, p0, Lj$/util/stream/Stream$Wrapper;->wrappedValue:Lj$/util/stream/Stream;

    invoke-static {p1}, Lj$/util/function/Consumer$VivifiedWrapper;->convert(Ljava/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/stream/Stream;->forEachOrdered(Lj$/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic isParallel()Z
    .locals 1

    iget-object v0, p0, Lj$/util/stream/Stream$Wrapper;->wrappedValue:Lj$/util/stream/Stream;

    check-cast v0, Lj$/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Lj$/util/stream/AbstractPipeline;->isParallel()Z

    move-result v0

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/Stream$Wrapper;->wrappedValue:Lj$/util/stream/Stream;

    check-cast v0, Lj$/util/stream/ReferencePipeline;

    invoke-virtual {v0}, Lj$/util/stream/ReferencePipeline;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final limit(J)Ljava/util/stream/Stream;
    .locals 4

    iget-object v0, p0, Lj$/util/stream/Stream$Wrapper;->wrappedValue:Lj$/util/stream/Stream;

    check-cast v0, Lj$/util/stream/ReferencePipeline;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_0

    .line 1
    invoke-static {v0, v1, v2, p1, p2}, Lj$/util/stream/Node$-CC;->makeRef(Lj$/util/stream/AbstractPipeline;JJ)Lj$/util/stream/Stream;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lj$/util/stream/Stream$Wrapper;->convert(Lj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final map(Ljava/util/function/Function;)Ljava/util/stream/Stream;
    .locals 7

    iget-object v0, p0, Lj$/util/stream/Stream$Wrapper;->wrappedValue:Lj$/util/stream/Stream;

    invoke-static {p1}, Lj$/util/function/Function$VivifiedWrapper;->convert(Ljava/util/function/Function;)Lj$/util/function/Function;

    move-result-object v5

    move-object v2, v0

    check-cast v2, Lj$/util/stream/ReferencePipeline;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lj$/util/stream/ReferencePipeline$3;

    sget v0, Lj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v0, v1

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lj$/util/stream/ReferencePipeline$3;-><init>(Lj$/util/stream/AbstractPipeline;IILj$/util/function/Function;I)V

    .line 2
    new-instance v0, Lj$/util/stream/Stream$Wrapper;

    invoke-direct {v0, p1}, Lj$/util/stream/Stream$Wrapper;-><init>(Lj$/util/stream/Stream;)V

    return-object v0
.end method

.method public final synthetic mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;
    .locals 3

    iget-object v0, p0, Lj$/util/stream/Stream$Wrapper;->wrappedValue:Lj$/util/stream/Stream;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v1, Lj$/util/function/Supplier$VivifiedWrapper;

    const/16 v2, 0x1a

    invoke-direct {v1, p1, v2}, Lj$/util/function/Supplier$VivifiedWrapper;-><init>(Ljava/lang/Object;I)V

    move-object p1, v1

    .line 2
    :goto_0
    check-cast v0, Lj$/util/stream/ReferencePipeline;

    invoke-virtual {v0, p1}, Lj$/util/stream/ReferencePipeline;->mapToDouble(Lj$/util/function/ToDoubleFunction;)Lj$/util/stream/DoubleStream;

    move-result-object p1

    invoke-static {p1}, Lj$/util/stream/DoubleStream$Wrapper;->convert(Lj$/util/stream/DoubleStream;)Ljava/util/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;
    .locals 3

    iget-object v0, p0, Lj$/util/stream/Stream$Wrapper;->wrappedValue:Lj$/util/stream/Stream;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v1, Lj$/util/function/Supplier$VivifiedWrapper;

    const/16 v2, 0x1b

    invoke-direct {v1, p1, v2}, Lj$/util/function/Supplier$VivifiedWrapper;-><init>(Ljava/lang/Object;I)V

    move-object p1, v1

    .line 2
    :goto_0
    check-cast v0, Lj$/util/stream/ReferencePipeline;

    invoke-virtual {v0, p1}, Lj$/util/stream/ReferencePipeline;->mapToInt(Lj$/util/function/ToIntFunction;)Lj$/util/stream/IntStream;

    move-result-object p1

    invoke-static {p1}, Lj$/util/stream/IntStream$Wrapper;->convert(Lj$/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;
    .locals 3

    iget-object v0, p0, Lj$/util/stream/Stream$Wrapper;->wrappedValue:Lj$/util/stream/Stream;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v1, Lj$/util/function/Supplier$VivifiedWrapper;

    const/16 v2, 0x1c

    invoke-direct {v1, p1, v2}, Lj$/util/function/Supplier$VivifiedWrapper;-><init>(Ljava/lang/Object;I)V

    move-object p1, v1

    .line 2
    :goto_0
    check-cast v0, Lj$/util/stream/ReferencePipeline;

    invoke-virtual {v0, p1}, Lj$/util/stream/ReferencePipeline;->mapToLong(Lj$/util/function/ToLongFunction;)Lj$/util/stream/LongStream;

    move-result-object p1

    invoke-static {p1}, Lj$/util/stream/LongStream$Wrapper;->convert(Lj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public final max(Ljava/util/Comparator;)Ljava/util/Optional;
    .locals 3

    iget-object v0, p0, Lj$/util/stream/Stream$Wrapper;->wrappedValue:Lj$/util/stream/Stream;

    check-cast v0, Lj$/util/stream/ReferencePipeline;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lj$/util/function/BinaryOperator$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lj$/util/function/BinaryOperator$$ExternalSyntheticLambda0;-><init>(Ljava/util/Comparator;I)V

    .line 2
    invoke-virtual {v0, v1}, Lj$/util/stream/ReferencePipeline;->reduce(Lj$/util/function/BinaryOperator;)Lj$/util/Optional;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lj$/util/OptionalConversions;->convert(Lj$/util/Optional;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public final min(Ljava/util/Comparator;)Ljava/util/Optional;
    .locals 3

    iget-object v0, p0, Lj$/util/stream/Stream$Wrapper;->wrappedValue:Lj$/util/stream/Stream;

    check-cast v0, Lj$/util/stream/ReferencePipeline;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lj$/util/function/BinaryOperator$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lj$/util/function/BinaryOperator$$ExternalSyntheticLambda0;-><init>(Ljava/util/Comparator;I)V

    .line 2
    invoke-virtual {v0, v1}, Lj$/util/stream/ReferencePipeline;->reduce(Lj$/util/function/BinaryOperator;)Lj$/util/Optional;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lj$/util/OptionalConversions;->convert(Lj$/util/Optional;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public final noneMatch(Ljava/util/function/Predicate;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/stream/Stream$Wrapper;->wrappedValue:Lj$/util/stream/Stream;

    invoke-static {p1}, Lj$/util/function/Supplier$VivifiedWrapper;->convert(Ljava/util/function/Predicate;)Lj$/util/function/Predicate;

    move-result-object p1

    check-cast v0, Lj$/util/stream/ReferencePipeline;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lj$/util/stream/MatchOps$MatchKind;->NONE:Lj$/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v1}, Lj$/util/stream/Node$-CC;->makeRef(Lj$/util/function/Predicate;Lj$/util/stream/MatchOps$MatchKind;)Lj$/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj$/util/stream/AbstractPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final synthetic onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/Stream$Wrapper;->wrappedValue:Lj$/util/stream/Stream;

    check-cast v0, Lj$/util/stream/AbstractPipeline;

    invoke-virtual {v0, p1}, Lj$/util/stream/AbstractPipeline;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    invoke-static {v0}, Lj$/util/stream/BaseStream$Wrapper;->convert(Lj$/util/stream/BaseStream;)Ljava/util/stream/BaseStream;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic parallel()Ljava/util/stream/BaseStream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/Stream$Wrapper;->wrappedValue:Lj$/util/stream/Stream;

    check-cast v0, Lj$/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Lj$/util/stream/AbstractPipeline;->parallel()Lj$/util/stream/BaseStream;

    invoke-static {v0}, Lj$/util/stream/BaseStream$Wrapper;->convert(Lj$/util/stream/BaseStream;)Ljava/util/stream/BaseStream;

    move-result-object v0

    return-object v0
.end method

.method public final peek(Ljava/util/function/Consumer;)Ljava/util/stream/Stream;
    .locals 7

    iget-object v0, p0, Lj$/util/stream/Stream$Wrapper;->wrappedValue:Lj$/util/stream/Stream;

    invoke-static {p1}, Lj$/util/function/Consumer$VivifiedWrapper;->convert(Ljava/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object v5

    move-object v2, v0

    check-cast v2, Lj$/util/stream/ReferencePipeline;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lj$/util/stream/IntPipeline$4;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x3

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lj$/util/stream/IntPipeline$4;-><init>(Lj$/util/stream/AbstractPipeline;IILjava/lang/Object;I)V

    .line 2
    new-instance v0, Lj$/util/stream/Stream$Wrapper;

    invoke-direct {v0, p1}, Lj$/util/stream/Stream$Wrapper;-><init>(Lj$/util/stream/Stream;)V

    return-object v0
.end method

.method public final reduce(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lj$/util/stream/Stream$Wrapper;->wrappedValue:Lj$/util/stream/Stream;

    invoke-static {p2}, Lj$/util/function/Supplier$VivifiedWrapper;->convert(Ljava/util/function/BiFunction;)Lj$/util/function/BiFunction;

    move-result-object v4

    invoke-static {p3}, Lj$/util/function/Supplier$VivifiedWrapper;->convert(Ljava/util/function/BinaryOperator;)Lj$/util/function/BinaryOperator;

    move-result-object v3

    check-cast v0, Lj$/util/stream/ReferencePipeline;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lj$/util/stream/ReduceOps$1;

    const/4 v2, 0x1

    const/4 v6, 0x0

    move-object v1, p2

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lj$/util/stream/ReduceOps$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 2
    invoke-virtual {v0, p2}, Lj$/util/stream/AbstractPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final reduce(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lj$/util/stream/Stream$Wrapper;->wrappedValue:Lj$/util/stream/Stream;

    invoke-static {p2}, Lj$/util/function/Supplier$VivifiedWrapper;->convert(Ljava/util/function/BinaryOperator;)Lj$/util/function/BinaryOperator;

    move-result-object v4

    check-cast v0, Lj$/util/stream/ReferencePipeline;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lj$/util/stream/ReduceOps$1;

    const/4 v2, 0x1

    const/4 v6, 0x0

    move-object v1, p2

    move-object v3, v4

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lj$/util/stream/ReduceOps$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 4
    invoke-virtual {v0, p2}, Lj$/util/stream/AbstractPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic reduce(Ljava/util/function/BinaryOperator;)Ljava/util/Optional;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/Stream$Wrapper;->wrappedValue:Lj$/util/stream/Stream;

    invoke-static {p1}, Lj$/util/function/Supplier$VivifiedWrapper;->convert(Ljava/util/function/BinaryOperator;)Lj$/util/function/BinaryOperator;

    move-result-object p1

    check-cast v0, Lj$/util/stream/ReferencePipeline;

    invoke-virtual {v0, p1}, Lj$/util/stream/ReferencePipeline;->reduce(Lj$/util/function/BinaryOperator;)Lj$/util/Optional;

    move-result-object p1

    invoke-static {p1}, Lj$/util/OptionalConversions;->convert(Lj$/util/Optional;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic sequential()Ljava/util/stream/BaseStream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/Stream$Wrapper;->wrappedValue:Lj$/util/stream/Stream;

    check-cast v0, Lj$/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Lj$/util/stream/AbstractPipeline;->sequential()Lj$/util/stream/BaseStream;

    invoke-static {v0}, Lj$/util/stream/BaseStream$Wrapper;->convert(Lj$/util/stream/BaseStream;)Ljava/util/stream/BaseStream;

    move-result-object v0

    return-object v0
.end method

.method public final skip(J)Ljava/util/stream/Stream;
    .locals 4

    iget-object v0, p0, Lj$/util/stream/Stream$Wrapper;->wrappedValue:Lj$/util/stream/Stream;

    check-cast v0, Lj$/util/stream/ReferencePipeline;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_1

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v1, -0x1

    .line 1
    invoke-static {v0, p1, p2, v1, v2}, Lj$/util/stream/Node$-CC;->makeRef(Lj$/util/stream/AbstractPipeline;JJ)Lj$/util/stream/Stream;

    move-result-object v0

    .line 2
    :goto_0
    invoke-static {v0}, Lj$/util/stream/Stream$Wrapper;->convert(Lj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final sorted()Ljava/util/stream/Stream;
    .locals 2

    iget-object v0, p0, Lj$/util/stream/Stream$Wrapper;->wrappedValue:Lj$/util/stream/Stream;

    check-cast v0, Lj$/util/stream/ReferencePipeline;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    new-instance v1, Lj$/util/stream/SortedOps$OfRef;

    invoke-direct {v1, v0}, Lj$/util/stream/SortedOps$OfRef;-><init>(Lj$/util/stream/AbstractPipeline;)V

    .line 2
    invoke-static {v1}, Lj$/util/stream/Stream$Wrapper;->convert(Lj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;
    .locals 2

    iget-object v0, p0, Lj$/util/stream/Stream$Wrapper;->wrappedValue:Lj$/util/stream/Stream;

    check-cast v0, Lj$/util/stream/ReferencePipeline;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    new-instance v1, Lj$/util/stream/SortedOps$OfRef;

    invoke-direct {v1, v0, p1}, Lj$/util/stream/SortedOps$OfRef;-><init>(Lj$/util/stream/AbstractPipeline;Ljava/util/Comparator;)V

    .line 4
    invoke-static {v1}, Lj$/util/stream/Stream$Wrapper;->convert(Lj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/Stream$Wrapper;->wrappedValue:Lj$/util/stream/Stream;

    check-cast v0, Lj$/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Lj$/util/stream/AbstractPipeline;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Spliterator$Wrapper;->convert(Lj$/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lj$/util/stream/Stream$Wrapper;->wrappedValue:Lj$/util/stream/Stream;

    check-cast v0, Lj$/util/stream/ReferencePipeline;

    .line 1
    sget-object v1, Lj$/util/stream/FindOps$$ExternalSyntheticLambda4;->INSTANCE$2:Lj$/util/stream/FindOps$$ExternalSyntheticLambda4;

    .line 2
    invoke-virtual {v0, v1}, Lj$/util/stream/AbstractPipeline;->evaluateToArrayNode(Lj$/util/function/IntFunction;)Lj$/util/stream/Node;

    move-result-object v0

    invoke-static {v0, v1}, Lj$/util/stream/Nodes;->flatten(Lj$/util/stream/Node;Lj$/util/function/IntFunction;)Lj$/util/stream/Node;

    move-result-object v0

    invoke-interface {v0, v1}, Lj$/util/stream/Node;->asArray(Lj$/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/Stream$Wrapper;->wrappedValue:Lj$/util/stream/Stream;

    invoke-static {p1}, Lj$/util/function/Supplier$VivifiedWrapper;->convert(Ljava/util/function/IntFunction;)Lj$/util/function/IntFunction;

    move-result-object p1

    check-cast v0, Lj$/util/stream/ReferencePipeline;

    .line 3
    invoke-virtual {v0, p1}, Lj$/util/stream/AbstractPipeline;->evaluateToArrayNode(Lj$/util/function/IntFunction;)Lj$/util/stream/Node;

    move-result-object v0

    invoke-static {v0, p1}, Lj$/util/stream/Nodes;->flatten(Lj$/util/stream/Node;Lj$/util/function/IntFunction;)Lj$/util/stream/Node;

    move-result-object v0

    invoke-interface {v0, p1}, Lj$/util/stream/Node;->asArray(Lj$/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic unordered()Ljava/util/stream/BaseStream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/Stream$Wrapper;->wrappedValue:Lj$/util/stream/Stream;

    check-cast v0, Lj$/util/stream/ReferencePipeline;

    invoke-virtual {v0}, Lj$/util/stream/ReferencePipeline;->unordered()Lj$/util/stream/BaseStream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/BaseStream$Wrapper;->convert(Lj$/util/stream/BaseStream;)Ljava/util/stream/BaseStream;

    move-result-object v0

    return-object v0
.end method
