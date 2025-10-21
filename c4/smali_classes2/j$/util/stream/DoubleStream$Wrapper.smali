.class public final synthetic Lj$/util/stream/DoubleStream$Wrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/stream/DoubleStream;


# instance fields
.field final synthetic wrappedValue:Lj$/util/stream/DoubleStream;


# direct methods
.method private synthetic constructor <init>(Lj$/util/stream/DoubleStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/stream/DoubleStream$Wrapper;->wrappedValue:Lj$/util/stream/DoubleStream;

    return-void
.end method

.method public static synthetic convert(Lj$/util/stream/DoubleStream;)Ljava/util/stream/DoubleStream;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lj$/util/stream/DoubleStream$Wrapper;

    invoke-direct {v0, p0}, Lj$/util/stream/DoubleStream$Wrapper;-><init>(Lj$/util/stream/DoubleStream;)V

    return-object v0
.end method


# virtual methods
.method public final allMatch(Ljava/util/function/DoublePredicate;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/stream/DoubleStream$Wrapper;->wrappedValue:Lj$/util/stream/DoubleStream;

    invoke-static {p1}, Lj$/util/function/Supplier$VivifiedWrapper;->convert(Ljava/util/function/DoublePredicate;)Lj$/util/function/DoublePredicate;

    move-result-object p1

    check-cast v0, Lj$/util/stream/DoublePipeline;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lj$/util/stream/MatchOps$MatchKind;->ALL:Lj$/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v1}, Lj$/util/stream/Node$-CC;->makeDouble(Lj$/util/function/DoublePredicate;Lj$/util/stream/MatchOps$MatchKind;)Lj$/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj$/util/stream/AbstractPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final anyMatch(Ljava/util/function/DoublePredicate;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/stream/DoubleStream$Wrapper;->wrappedValue:Lj$/util/stream/DoubleStream;

    invoke-static {p1}, Lj$/util/function/Supplier$VivifiedWrapper;->convert(Ljava/util/function/DoublePredicate;)Lj$/util/function/DoublePredicate;

    move-result-object p1

    check-cast v0, Lj$/util/stream/DoublePipeline;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lj$/util/stream/MatchOps$MatchKind;->ANY:Lj$/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v1}, Lj$/util/stream/Node$-CC;->makeDouble(Lj$/util/function/DoublePredicate;Lj$/util/stream/MatchOps$MatchKind;)Lj$/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj$/util/stream/AbstractPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final average()Ljava/util/OptionalDouble;
    .locals 7

    iget-object v0, p0, Lj$/util/stream/DoubleStream$Wrapper;->wrappedValue:Lj$/util/stream/DoubleStream;

    check-cast v0, Lj$/util/stream/DoublePipeline;

    .line 1
    sget-object v1, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda8;->INSTANCE$1:Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda8;

    sget-object v2, Lj$/util/stream/FindOps$$ExternalSyntheticLambda1;->INSTANCE$3:Lj$/util/stream/FindOps$$ExternalSyntheticLambda1;

    sget-object v3, Lj$/util/stream/FindOps$$ExternalSyntheticLambda3;->INSTANCE$2:Lj$/util/stream/FindOps$$ExternalSyntheticLambda3;

    invoke-virtual {v0, v1, v2, v3}, Lj$/util/stream/DoublePipeline;->collect(Lj$/util/function/Supplier;Lj$/util/function/ObjDoubleConsumer;Lj$/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    const/4 v1, 0x2

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-lez v6, :cond_0

    invoke-static {v0}, Lj$/util/stream/Collectors;->computeFinalSum([D)D

    move-result-wide v2

    aget-wide v4, v0, v1

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Lj$/util/OptionalDouble;->of(D)Lj$/util/OptionalDouble;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lj$/util/OptionalDouble;->empty()Lj$/util/OptionalDouble;

    move-result-object v0

    .line 2
    :goto_0
    invoke-static {v0}, Lj$/util/OptionalConversions;->convert(Lj$/util/OptionalDouble;)Ljava/util/OptionalDouble;

    move-result-object v0

    return-object v0
.end method

.method public final boxed()Ljava/util/stream/Stream;
    .locals 2

    iget-object v0, p0, Lj$/util/stream/DoubleStream$Wrapper;->wrappedValue:Lj$/util/stream/DoubleStream;

    check-cast v0, Lj$/util/stream/DoublePipeline;

    .line 1
    sget-object v1, Lj$/util/stream/Node$$ExternalSyntheticLambda0;->INSTANCE$7:Lj$/util/stream/Node$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Lj$/util/stream/DoublePipeline;->mapToObj(Lj$/util/function/DoubleFunction;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lj$/util/stream/Stream$Wrapper;->convert(Lj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic close()V
    .locals 1

    iget-object v0, p0, Lj$/util/stream/DoubleStream$Wrapper;->wrappedValue:Lj$/util/stream/DoubleStream;

    check-cast v0, Lj$/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Lj$/util/stream/AbstractPipeline;->close()V

    return-void
.end method

.method public final synthetic collect(Ljava/util/function/Supplier;Ljava/util/function/ObjDoubleConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lj$/util/stream/DoubleStream$Wrapper;->wrappedValue:Lj$/util/stream/DoubleStream;

    invoke-static {p1}, Lj$/util/function/Supplier$VivifiedWrapper;->convert(Ljava/util/function/Supplier;)Lj$/util/function/Supplier;

    move-result-object p1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v1, Lj$/util/function/Supplier$VivifiedWrapper;

    const/16 v2, 0x16

    invoke-direct {v1, p2, v2}, Lj$/util/function/Supplier$VivifiedWrapper;-><init>(Ljava/lang/Object;I)V

    move-object p2, v1

    .line 2
    :goto_0
    invoke-static {p3}, Lj$/util/function/Supplier$VivifiedWrapper;->convert(Ljava/util/function/BiConsumer;)Lj$/util/function/BiConsumer;

    move-result-object p3

    check-cast v0, Lj$/util/stream/DoublePipeline;

    invoke-virtual {v0, p1, p2, p3}, Lj$/util/stream/DoublePipeline;->collect(Lj$/util/function/Supplier;Lj$/util/function/ObjDoubleConsumer;Lj$/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final count()J
    .locals 2

    iget-object v0, p0, Lj$/util/stream/DoubleStream$Wrapper;->wrappedValue:Lj$/util/stream/DoubleStream;

    check-cast v0, Lj$/util/stream/DoublePipeline;

    sget-object v1, Lj$/util/stream/Node$$ExternalSyntheticLambda0;->INSTANCE$8:Lj$/util/stream/Node$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Lj$/util/stream/DoublePipeline;->mapToLong(Lj$/util/function/DoubleToLongFunction;)Lj$/util/stream/LongStream;

    move-result-object v0

    check-cast v0, Lj$/util/stream/LongPipeline;

    invoke-virtual {v0}, Lj$/util/stream/LongPipeline;->sum()J

    move-result-wide v0

    return-wide v0
.end method

.method public final distinct()Ljava/util/stream/DoubleStream;
    .locals 2

    iget-object v0, p0, Lj$/util/stream/DoubleStream$Wrapper;->wrappedValue:Lj$/util/stream/DoubleStream;

    check-cast v0, Lj$/util/stream/DoublePipeline;

    .line 1
    sget-object v1, Lj$/util/stream/Node$$ExternalSyntheticLambda0;->INSTANCE$7:Lj$/util/stream/Node$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Lj$/util/stream/DoublePipeline;->mapToObj(Lj$/util/function/DoubleFunction;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 2
    check-cast v0, Lj$/util/stream/ReferencePipeline;

    invoke-virtual {v0}, Lj$/util/stream/ReferencePipeline;->distinct()Lj$/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lj$/util/stream/Node$$ExternalSyntheticLambda0;->INSTANCE$5:Lj$/util/stream/Node$$ExternalSyntheticLambda0;

    check-cast v0, Lj$/util/stream/ReferencePipeline;

    invoke-virtual {v0, v1}, Lj$/util/stream/ReferencePipeline;->mapToDouble(Lj$/util/function/ToDoubleFunction;)Lj$/util/stream/DoubleStream;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lj$/util/stream/DoubleStream$Wrapper;->convert(Lj$/util/stream/DoubleStream;)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public final filter(Ljava/util/function/DoublePredicate;)Ljava/util/stream/DoubleStream;
    .locals 7

    iget-object v0, p0, Lj$/util/stream/DoubleStream$Wrapper;->wrappedValue:Lj$/util/stream/DoubleStream;

    invoke-static {p1}, Lj$/util/function/Supplier$VivifiedWrapper;->convert(Ljava/util/function/DoublePredicate;)Lj$/util/function/DoublePredicate;

    move-result-object v5

    move-object v2, v0

    check-cast v2, Lj$/util/stream/DoublePipeline;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lj$/util/stream/IntPipeline$6;

    sget v4, Lj$/util/stream/StreamOpFlag;->NOT_SIZED:I

    const/4 v3, 0x4

    const/4 v6, 0x3

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lj$/util/stream/IntPipeline$6;-><init>(Lj$/util/stream/AbstractPipeline;IILjava/lang/Object;I)V

    .line 2
    invoke-static {p1}, Lj$/util/stream/DoubleStream$Wrapper;->convert(Lj$/util/stream/DoubleStream;)Ljava/util/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method

.method public final findAny()Ljava/util/OptionalDouble;
    .locals 8

    iget-object v0, p0, Lj$/util/stream/DoubleStream$Wrapper;->wrappedValue:Lj$/util/stream/DoubleStream;

    check-cast v0, Lj$/util/stream/DoublePipeline;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    new-instance v7, Lj$/util/stream/FindOps$FindOp;

    invoke-static {}, Lj$/util/OptionalDouble;->empty()Lj$/util/OptionalDouble;

    move-result-object v4

    sget-object v5, Lj$/util/stream/FindOps$$ExternalSyntheticLambda1;->INSTANCE:Lj$/util/stream/FindOps$$ExternalSyntheticLambda1;

    sget-object v6, Lj$/util/stream/FindOps$$ExternalSyntheticLambda4;->INSTANCE:Lj$/util/stream/FindOps$$ExternalSyntheticLambda4;

    const/4 v2, 0x0

    const/4 v3, 0x4

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lj$/util/stream/FindOps$FindOp;-><init>(ZILjava/lang/Object;Lj$/util/function/Predicate;Lj$/util/function/Supplier;)V

    .line 2
    invoke-virtual {v0, v7}, Lj$/util/stream/AbstractPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/OptionalDouble;

    .line 3
    invoke-static {v0}, Lj$/util/OptionalConversions;->convert(Lj$/util/OptionalDouble;)Ljava/util/OptionalDouble;

    move-result-object v0

    return-object v0
.end method

.method public final findFirst()Ljava/util/OptionalDouble;
    .locals 8

    iget-object v0, p0, Lj$/util/stream/DoubleStream$Wrapper;->wrappedValue:Lj$/util/stream/DoubleStream;

    check-cast v0, Lj$/util/stream/DoublePipeline;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    new-instance v7, Lj$/util/stream/FindOps$FindOp;

    invoke-static {}, Lj$/util/OptionalDouble;->empty()Lj$/util/OptionalDouble;

    move-result-object v4

    sget-object v5, Lj$/util/stream/FindOps$$ExternalSyntheticLambda1;->INSTANCE:Lj$/util/stream/FindOps$$ExternalSyntheticLambda1;

    sget-object v6, Lj$/util/stream/FindOps$$ExternalSyntheticLambda4;->INSTANCE:Lj$/util/stream/FindOps$$ExternalSyntheticLambda4;

    const/4 v2, 0x1

    const/4 v3, 0x4

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lj$/util/stream/FindOps$FindOp;-><init>(ZILjava/lang/Object;Lj$/util/function/Predicate;Lj$/util/function/Supplier;)V

    .line 2
    invoke-virtual {v0, v7}, Lj$/util/stream/AbstractPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/OptionalDouble;

    .line 3
    invoke-static {v0}, Lj$/util/OptionalConversions;->convert(Lj$/util/OptionalDouble;)Ljava/util/OptionalDouble;

    move-result-object v0

    return-object v0
.end method

.method public final flatMap(Ljava/util/function/DoubleFunction;)Ljava/util/stream/DoubleStream;
    .locals 9

    iget-object v0, p0, Lj$/util/stream/DoubleStream$Wrapper;->wrappedValue:Lj$/util/stream/DoubleStream;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    move-object v7, p1

    goto :goto_0

    .line 1
    :cond_0
    new-instance v1, Lj$/util/function/Supplier$VivifiedWrapper;

    const/4 v2, 0x5

    invoke-direct {v1, p1, v2}, Lj$/util/function/Supplier$VivifiedWrapper;-><init>(Ljava/lang/Object;I)V

    move-object v7, v1

    .line 2
    :goto_0
    move-object v4, v0

    check-cast v4, Lj$/util/stream/DoublePipeline;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    new-instance p1, Lj$/util/stream/IntPipeline$6;

    const/4 v5, 0x4

    sget v0, Lj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v0, v1

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v6, v0, v1

    const/4 v8, 0x2

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lj$/util/stream/IntPipeline$6;-><init>(Lj$/util/stream/AbstractPipeline;IILjava/lang/Object;I)V

    .line 4
    invoke-static {p1}, Lj$/util/stream/DoubleStream$Wrapper;->convert(Lj$/util/stream/DoubleStream;)Ljava/util/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic forEach(Ljava/util/function/DoubleConsumer;)V
    .locals 1

    iget-object v0, p0, Lj$/util/stream/DoubleStream$Wrapper;->wrappedValue:Lj$/util/stream/DoubleStream;

    invoke-static {p1}, Lj$/util/function/DoubleConsumer$VivifiedWrapper;->convert(Ljava/util/function/DoubleConsumer;)Lj$/util/function/DoubleConsumer;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/stream/DoubleStream;->forEach(Lj$/util/function/DoubleConsumer;)V

    return-void
.end method

.method public final synthetic forEachOrdered(Ljava/util/function/DoubleConsumer;)V
    .locals 1

    iget-object v0, p0, Lj$/util/stream/DoubleStream$Wrapper;->wrappedValue:Lj$/util/stream/DoubleStream;

    invoke-static {p1}, Lj$/util/function/DoubleConsumer$VivifiedWrapper;->convert(Ljava/util/function/DoubleConsumer;)Lj$/util/function/DoubleConsumer;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/stream/DoubleStream;->forEachOrdered(Lj$/util/function/DoubleConsumer;)V

    return-void
.end method

.method public final synthetic isParallel()Z
    .locals 1

    iget-object v0, p0, Lj$/util/stream/DoubleStream$Wrapper;->wrappedValue:Lj$/util/stream/DoubleStream;

    check-cast v0, Lj$/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Lj$/util/stream/AbstractPipeline;->isParallel()Z

    move-result v0

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/DoubleStream$Wrapper;->wrappedValue:Lj$/util/stream/DoubleStream;

    check-cast v0, Lj$/util/stream/DoublePipeline;

    invoke-virtual {v0}, Lj$/util/stream/DoublePipeline;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final iterator()Ljava/util/PrimitiveIterator$OfDouble;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/DoubleStream$Wrapper;->wrappedValue:Lj$/util/stream/DoubleStream;

    check-cast v0, Lj$/util/stream/DoublePipeline;

    .line 1
    invoke-virtual {v0}, Lj$/util/stream/DoublePipeline;->spliterator()Lj$/util/Spliterator$OfDouble;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Spliterators;->iterator(Lj$/util/Spliterator$OfDouble;)Lj$/util/PrimitiveIterator$OfDouble;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lj$/util/PrimitiveIterator$OfDouble$Wrapper;->convert(Lj$/util/PrimitiveIterator$OfDouble;)Ljava/util/PrimitiveIterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public final limit(J)Ljava/util/stream/DoubleStream;
    .locals 4

    iget-object v0, p0, Lj$/util/stream/DoubleStream$Wrapper;->wrappedValue:Lj$/util/stream/DoubleStream;

    check-cast v0, Lj$/util/stream/DoublePipeline;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_0

    .line 1
    invoke-static {v0, v1, v2, p1, p2}, Lj$/util/stream/Node$-CC;->makeDouble(Lj$/util/stream/AbstractPipeline;JJ)Lj$/util/stream/DoubleStream;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lj$/util/stream/DoubleStream$Wrapper;->convert(Lj$/util/stream/DoubleStream;)Ljava/util/stream/DoubleStream;

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

.method public final map(Ljava/util/function/DoubleUnaryOperator;)Ljava/util/stream/DoubleStream;
    .locals 9

    iget-object v0, p0, Lj$/util/stream/DoubleStream$Wrapper;->wrappedValue:Lj$/util/stream/DoubleStream;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    move-object v7, p1

    goto :goto_0

    .line 1
    :cond_0
    new-instance v1, Lj$/util/function/Supplier$VivifiedWrapper;

    const/16 v2, 0x9

    invoke-direct {v1, p1, v2}, Lj$/util/function/Supplier$VivifiedWrapper;-><init>(Ljava/lang/Object;I)V

    move-object v7, v1

    .line 2
    :goto_0
    move-object v4, v0

    check-cast v4, Lj$/util/stream/DoublePipeline;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lj$/util/stream/IntPipeline$6;

    const/4 v5, 0x4

    sget v0, Lj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v6, v0, v1

    const/4 v8, 0x1

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lj$/util/stream/IntPipeline$6;-><init>(Lj$/util/stream/AbstractPipeline;IILjava/lang/Object;I)V

    .line 4
    invoke-static {p1}, Lj$/util/stream/DoubleStream$Wrapper;->convert(Lj$/util/stream/DoubleStream;)Ljava/util/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method

.method public final mapToInt(Ljava/util/function/DoubleToIntFunction;)Ljava/util/stream/IntStream;
    .locals 9

    iget-object v0, p0, Lj$/util/stream/DoubleStream$Wrapper;->wrappedValue:Lj$/util/stream/DoubleStream;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    move-object v7, p1

    goto :goto_0

    .line 1
    :cond_0
    new-instance v1, Lj$/util/function/Supplier$VivifiedWrapper;

    const/4 v2, 0x7

    invoke-direct {v1, p1, v2}, Lj$/util/function/Supplier$VivifiedWrapper;-><init>(Ljava/lang/Object;I)V

    move-object v7, v1

    .line 2
    :goto_0
    move-object v4, v0

    check-cast v4, Lj$/util/stream/DoublePipeline;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lj$/util/stream/IntPipeline$3;

    const/4 v5, 0x4

    sget v0, Lj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v6, v0, v1

    const/4 v8, 0x1

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lj$/util/stream/IntPipeline$3;-><init>(Lj$/util/stream/AbstractPipeline;IILjava/lang/Object;I)V

    .line 4
    invoke-static {p1}, Lj$/util/stream/IntStream$Wrapper;->convert(Lj$/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mapToLong(Ljava/util/function/DoubleToLongFunction;)Ljava/util/stream/LongStream;
    .locals 3

    iget-object v0, p0, Lj$/util/stream/DoubleStream$Wrapper;->wrappedValue:Lj$/util/stream/DoubleStream;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v1, Lj$/util/function/Supplier$VivifiedWrapper;

    const/16 v2, 0x8

    invoke-direct {v1, p1, v2}, Lj$/util/function/Supplier$VivifiedWrapper;-><init>(Ljava/lang/Object;I)V

    move-object p1, v1

    .line 2
    :goto_0
    check-cast v0, Lj$/util/stream/DoublePipeline;

    invoke-virtual {v0, p1}, Lj$/util/stream/DoublePipeline;->mapToLong(Lj$/util/function/DoubleToLongFunction;)Lj$/util/stream/LongStream;

    move-result-object p1

    invoke-static {p1}, Lj$/util/stream/LongStream$Wrapper;->convert(Lj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mapToObj(Ljava/util/function/DoubleFunction;)Ljava/util/stream/Stream;
    .locals 3

    iget-object v0, p0, Lj$/util/stream/DoubleStream$Wrapper;->wrappedValue:Lj$/util/stream/DoubleStream;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v1, Lj$/util/function/Supplier$VivifiedWrapper;

    const/4 v2, 0x5

    invoke-direct {v1, p1, v2}, Lj$/util/function/Supplier$VivifiedWrapper;-><init>(Ljava/lang/Object;I)V

    move-object p1, v1

    .line 2
    :goto_0
    check-cast v0, Lj$/util/stream/DoublePipeline;

    invoke-virtual {v0, p1}, Lj$/util/stream/DoublePipeline;->mapToObj(Lj$/util/function/DoubleFunction;)Lj$/util/stream/Stream;

    move-result-object p1

    invoke-static {p1}, Lj$/util/stream/Stream$Wrapper;->convert(Lj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public final max()Ljava/util/OptionalDouble;
    .locals 2

    iget-object v0, p0, Lj$/util/stream/DoubleStream$Wrapper;->wrappedValue:Lj$/util/stream/DoubleStream;

    check-cast v0, Lj$/util/stream/DoublePipeline;

    .line 1
    sget-object v1, Lj$/util/stream/Node$$ExternalSyntheticLambda0;->INSTANCE$6:Lj$/util/stream/Node$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Lj$/util/stream/DoublePipeline;->reduce(Lj$/util/function/DoubleBinaryOperator;)Lj$/util/OptionalDouble;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lj$/util/OptionalConversions;->convert(Lj$/util/OptionalDouble;)Ljava/util/OptionalDouble;

    move-result-object v0

    return-object v0
.end method

.method public final min()Ljava/util/OptionalDouble;
    .locals 2

    iget-object v0, p0, Lj$/util/stream/DoubleStream$Wrapper;->wrappedValue:Lj$/util/stream/DoubleStream;

    check-cast v0, Lj$/util/stream/DoublePipeline;

    .line 1
    sget-object v1, Lj$/util/stream/FindOps$$ExternalSyntheticLambda1;->INSTANCE$4:Lj$/util/stream/FindOps$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Lj$/util/stream/DoublePipeline;->reduce(Lj$/util/function/DoubleBinaryOperator;)Lj$/util/OptionalDouble;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lj$/util/OptionalConversions;->convert(Lj$/util/OptionalDouble;)Ljava/util/OptionalDouble;

    move-result-object v0

    return-object v0
.end method

.method public final noneMatch(Ljava/util/function/DoublePredicate;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/stream/DoubleStream$Wrapper;->wrappedValue:Lj$/util/stream/DoubleStream;

    invoke-static {p1}, Lj$/util/function/Supplier$VivifiedWrapper;->convert(Ljava/util/function/DoublePredicate;)Lj$/util/function/DoublePredicate;

    move-result-object p1

    check-cast v0, Lj$/util/stream/DoublePipeline;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lj$/util/stream/MatchOps$MatchKind;->NONE:Lj$/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v1}, Lj$/util/stream/Node$-CC;->makeDouble(Lj$/util/function/DoublePredicate;Lj$/util/stream/MatchOps$MatchKind;)Lj$/util/stream/TerminalOp;

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

    iget-object v0, p0, Lj$/util/stream/DoubleStream$Wrapper;->wrappedValue:Lj$/util/stream/DoubleStream;

    check-cast v0, Lj$/util/stream/AbstractPipeline;

    invoke-virtual {v0, p1}, Lj$/util/stream/AbstractPipeline;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    invoke-static {v0}, Lj$/util/stream/BaseStream$Wrapper;->convert(Lj$/util/stream/BaseStream;)Ljava/util/stream/BaseStream;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic parallel()Ljava/util/stream/BaseStream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/DoubleStream$Wrapper;->wrappedValue:Lj$/util/stream/DoubleStream;

    check-cast v0, Lj$/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Lj$/util/stream/AbstractPipeline;->parallel()Lj$/util/stream/BaseStream;

    invoke-static {v0}, Lj$/util/stream/BaseStream$Wrapper;->convert(Lj$/util/stream/BaseStream;)Ljava/util/stream/BaseStream;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic parallel()Ljava/util/stream/DoubleStream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/DoubleStream$Wrapper;->wrappedValue:Lj$/util/stream/DoubleStream;

    invoke-interface {v0}, Lj$/util/stream/DoubleStream;->parallel()Lj$/util/stream/DoubleStream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/DoubleStream$Wrapper;->convert(Lj$/util/stream/DoubleStream;)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public final peek(Ljava/util/function/DoubleConsumer;)Ljava/util/stream/DoubleStream;
    .locals 7

    iget-object v0, p0, Lj$/util/stream/DoubleStream$Wrapper;->wrappedValue:Lj$/util/stream/DoubleStream;

    invoke-static {p1}, Lj$/util/function/DoubleConsumer$VivifiedWrapper;->convert(Ljava/util/function/DoubleConsumer;)Lj$/util/function/DoubleConsumer;

    move-result-object v5

    move-object v2, v0

    check-cast v2, Lj$/util/stream/DoublePipeline;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lj$/util/stream/IntPipeline$6;

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v6, 0x4

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lj$/util/stream/IntPipeline$6;-><init>(Lj$/util/stream/AbstractPipeline;IILjava/lang/Object;I)V

    .line 2
    invoke-static {p1}, Lj$/util/stream/DoubleStream$Wrapper;->convert(Lj$/util/stream/DoubleStream;)Ljava/util/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method

.method public final reduce(DLjava/util/function/DoubleBinaryOperator;)D
    .locals 3

    iget-object v0, p0, Lj$/util/stream/DoubleStream$Wrapper;->wrappedValue:Lj$/util/stream/DoubleStream;

    const/4 v1, 0x4

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v2, Lj$/util/function/Supplier$VivifiedWrapper;

    invoke-direct {v2, p3, v1}, Lj$/util/function/Supplier$VivifiedWrapper;-><init>(Ljava/lang/Object;I)V

    move-object p3, v2

    .line 2
    :goto_0
    check-cast v0, Lj$/util/stream/DoublePipeline;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lj$/util/stream/ReduceOps$11;

    invoke-direct {v2, v1, p3, p1, p2}, Lj$/util/stream/ReduceOps$11;-><init>(ILj$/util/function/DoubleBinaryOperator;D)V

    .line 4
    invoke-virtual {v0, v2}, Lj$/util/stream/AbstractPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    return-wide p1
.end method

.method public final synthetic reduce(Ljava/util/function/DoubleBinaryOperator;)Ljava/util/OptionalDouble;
    .locals 3

    iget-object v0, p0, Lj$/util/stream/DoubleStream$Wrapper;->wrappedValue:Lj$/util/stream/DoubleStream;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lj$/util/function/Supplier$VivifiedWrapper;

    const/4 v2, 0x4

    invoke-direct {v1, p1, v2}, Lj$/util/function/Supplier$VivifiedWrapper;-><init>(Ljava/lang/Object;I)V

    move-object p1, v1

    .line 6
    :goto_0
    check-cast v0, Lj$/util/stream/DoublePipeline;

    invoke-virtual {v0, p1}, Lj$/util/stream/DoublePipeline;->reduce(Lj$/util/function/DoubleBinaryOperator;)Lj$/util/OptionalDouble;

    move-result-object p1

    invoke-static {p1}, Lj$/util/OptionalConversions;->convert(Lj$/util/OptionalDouble;)Ljava/util/OptionalDouble;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic sequential()Ljava/util/stream/BaseStream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/DoubleStream$Wrapper;->wrappedValue:Lj$/util/stream/DoubleStream;

    check-cast v0, Lj$/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Lj$/util/stream/AbstractPipeline;->sequential()Lj$/util/stream/BaseStream;

    invoke-static {v0}, Lj$/util/stream/BaseStream$Wrapper;->convert(Lj$/util/stream/BaseStream;)Ljava/util/stream/BaseStream;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic sequential()Ljava/util/stream/DoubleStream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/DoubleStream$Wrapper;->wrappedValue:Lj$/util/stream/DoubleStream;

    invoke-interface {v0}, Lj$/util/stream/DoubleStream;->sequential()Lj$/util/stream/DoubleStream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/DoubleStream$Wrapper;->convert(Lj$/util/stream/DoubleStream;)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public final skip(J)Ljava/util/stream/DoubleStream;
    .locals 4

    iget-object v0, p0, Lj$/util/stream/DoubleStream$Wrapper;->wrappedValue:Lj$/util/stream/DoubleStream;

    check-cast v0, Lj$/util/stream/DoublePipeline;

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
    invoke-static {v0, p1, p2, v1, v2}, Lj$/util/stream/Node$-CC;->makeDouble(Lj$/util/stream/AbstractPipeline;JJ)Lj$/util/stream/DoubleStream;

    move-result-object v0

    .line 2
    :goto_0
    invoke-static {v0}, Lj$/util/stream/DoubleStream$Wrapper;->convert(Lj$/util/stream/DoubleStream;)Ljava/util/stream/DoubleStream;

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

.method public final sorted()Ljava/util/stream/DoubleStream;
    .locals 2

    iget-object v0, p0, Lj$/util/stream/DoubleStream$Wrapper;->wrappedValue:Lj$/util/stream/DoubleStream;

    check-cast v0, Lj$/util/stream/DoublePipeline;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    new-instance v1, Lj$/util/stream/SortedOps$OfDouble;

    invoke-direct {v1, v0}, Lj$/util/stream/SortedOps$OfDouble;-><init>(Lj$/util/stream/AbstractPipeline;)V

    .line 2
    invoke-static {v1}, Lj$/util/stream/DoubleStream$Wrapper;->convert(Lj$/util/stream/DoubleStream;)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic spliterator()Ljava/util/Spliterator$OfDouble;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/DoubleStream$Wrapper;->wrappedValue:Lj$/util/stream/DoubleStream;

    check-cast v0, Lj$/util/stream/DoublePipeline;

    invoke-virtual {v0}, Lj$/util/stream/DoublePipeline;->spliterator()Lj$/util/Spliterator$OfDouble;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Spliterator$OfDouble$Wrapper;->convert(Lj$/util/Spliterator$OfDouble;)Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/DoubleStream$Wrapper;->wrappedValue:Lj$/util/stream/DoubleStream;

    check-cast v0, Lj$/util/stream/DoublePipeline;

    .line 1
    invoke-virtual {v0}, Lj$/util/stream/DoublePipeline;->spliterator()Lj$/util/Spliterator$OfDouble;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lj$/util/Spliterator$Wrapper;->convert(Lj$/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public final sum()D
    .locals 4

    iget-object v0, p0, Lj$/util/stream/DoubleStream$Wrapper;->wrappedValue:Lj$/util/stream/DoubleStream;

    check-cast v0, Lj$/util/stream/DoublePipeline;

    sget-object v1, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda0;->INSTANCE$1:Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda0;

    sget-object v2, Lj$/util/stream/FindOps$$ExternalSyntheticLambda2;->INSTANCE$3:Lj$/util/stream/FindOps$$ExternalSyntheticLambda2;

    sget-object v3, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda8;->INSTANCE$2:Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda8;

    invoke-virtual {v0, v1, v2, v3}, Lj$/util/stream/DoublePipeline;->collect(Lj$/util/function/Supplier;Lj$/util/function/ObjDoubleConsumer;Lj$/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    invoke-static {v0}, Lj$/util/stream/Collectors;->computeFinalSum([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final summaryStatistics()Ljava/util/DoubleSummaryStatistics;
    .locals 4

    iget-object v0, p0, Lj$/util/stream/DoubleStream$Wrapper;->wrappedValue:Lj$/util/stream/DoubleStream;

    check-cast v0, Lj$/util/stream/DoublePipeline;

    .line 1
    sget-object v1, Lj$/util/stream/Node$$ExternalSyntheticLambda0;->INSTANCE$2:Lj$/util/stream/Node$$ExternalSyntheticLambda0;

    sget-object v2, Lj$/util/stream/Node$$ExternalSyntheticLambda0;->INSTANCE$4:Lj$/util/stream/Node$$ExternalSyntheticLambda0;

    sget-object v3, Lj$/util/stream/FindOps$$ExternalSyntheticLambda2;->INSTANCE$2:Lj$/util/stream/FindOps$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v1, v2, v3}, Lj$/util/stream/DoublePipeline;->collect(Lj$/util/function/Supplier;Lj$/util/function/ObjDoubleConsumer;Lj$/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/DoubleSummaryStatistics;

    .line 2
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Java 8+ API desugaring (library desugaring) cannot convert to java.util.DoubleSummaryStatistics"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toArray()[D
    .locals 2

    iget-object v0, p0, Lj$/util/stream/DoubleStream$Wrapper;->wrappedValue:Lj$/util/stream/DoubleStream;

    check-cast v0, Lj$/util/stream/DoublePipeline;

    sget-object v1, Lj$/util/stream/FindOps$$ExternalSyntheticLambda1;->INSTANCE$5:Lj$/util/stream/FindOps$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Lj$/util/stream/AbstractPipeline;->evaluateToArrayNode(Lj$/util/function/IntFunction;)Lj$/util/stream/Node;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Node$OfDouble;

    invoke-static {v0}, Lj$/util/stream/Nodes;->flattenDouble(Lj$/util/stream/Node$OfDouble;)Lj$/util/stream/Node$OfDouble;

    move-result-object v0

    invoke-interface {v0}, Lj$/util/stream/Node$OfPrimitive;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public final synthetic unordered()Ljava/util/stream/BaseStream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/DoubleStream$Wrapper;->wrappedValue:Lj$/util/stream/DoubleStream;

    check-cast v0, Lj$/util/stream/DoublePipeline;

    invoke-virtual {v0}, Lj$/util/stream/DoublePipeline;->unordered()Lj$/util/stream/BaseStream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/BaseStream$Wrapper;->convert(Lj$/util/stream/BaseStream;)Ljava/util/stream/BaseStream;

    move-result-object v0

    return-object v0
.end method
