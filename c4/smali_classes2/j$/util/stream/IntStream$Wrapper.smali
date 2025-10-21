.class public final synthetic Lj$/util/stream/IntStream$Wrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/stream/IntStream;


# instance fields
.field final synthetic wrappedValue:Lj$/util/stream/IntStream;


# direct methods
.method private synthetic constructor <init>(Lj$/util/stream/IntStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/stream/IntStream$Wrapper;->wrappedValue:Lj$/util/stream/IntStream;

    return-void
.end method

.method public static synthetic convert(Lj$/util/stream/IntStream;)Ljava/util/stream/IntStream;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lj$/util/stream/IntStream$Wrapper;

    invoke-direct {v0, p0}, Lj$/util/stream/IntStream$Wrapper;-><init>(Lj$/util/stream/IntStream;)V

    return-object v0
.end method


# virtual methods
.method public final allMatch(Ljava/util/function/IntPredicate;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/stream/IntStream$Wrapper;->wrappedValue:Lj$/util/stream/IntStream;

    invoke-static {p1}, Lj$/util/function/Supplier$VivifiedWrapper;->convert(Ljava/util/function/IntPredicate;)Lj$/util/function/IntPredicate;

    move-result-object p1

    check-cast v0, Lj$/util/stream/IntPipeline;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lj$/util/stream/MatchOps$MatchKind;->ALL:Lj$/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v1}, Lj$/util/stream/Node$-CC;->makeInt(Lj$/util/function/IntPredicate;Lj$/util/stream/MatchOps$MatchKind;)Lj$/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj$/util/stream/AbstractPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final anyMatch(Ljava/util/function/IntPredicate;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/stream/IntStream$Wrapper;->wrappedValue:Lj$/util/stream/IntStream;

    invoke-static {p1}, Lj$/util/function/Supplier$VivifiedWrapper;->convert(Ljava/util/function/IntPredicate;)Lj$/util/function/IntPredicate;

    move-result-object p1

    check-cast v0, Lj$/util/stream/IntPipeline;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lj$/util/stream/MatchOps$MatchKind;->ANY:Lj$/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v1}, Lj$/util/stream/Node$-CC;->makeInt(Lj$/util/function/IntPredicate;Lj$/util/stream/MatchOps$MatchKind;)Lj$/util/stream/TerminalOp;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj$/util/stream/AbstractPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final asDoubleStream()Ljava/util/stream/DoubleStream;
    .locals 5

    iget-object v0, p0, Lj$/util/stream/IntStream$Wrapper;->wrappedValue:Lj$/util/stream/IntStream;

    check-cast v0, Lj$/util/stream/IntPipeline;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    new-instance v1, Lj$/util/stream/IntPipeline$2;

    sget v2, Lj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v3, Lj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v1, v0, v3, v2, v4}, Lj$/util/stream/IntPipeline$2;-><init>(Lj$/util/stream/AbstractPipeline;III)V

    .line 2
    invoke-static {v1}, Lj$/util/stream/DoubleStream$Wrapper;->convert(Lj$/util/stream/DoubleStream;)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public final asLongStream()Ljava/util/stream/LongStream;
    .locals 5

    iget-object v0, p0, Lj$/util/stream/IntStream$Wrapper;->wrappedValue:Lj$/util/stream/IntStream;

    check-cast v0, Lj$/util/stream/IntPipeline;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    new-instance v1, Lj$/util/stream/IntPipeline$1;

    sget v2, Lj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v3, Lj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v1, v0, v3, v2, v4}, Lj$/util/stream/IntPipeline$1;-><init>(Lj$/util/stream/AbstractPipeline;III)V

    .line 2
    invoke-static {v1}, Lj$/util/stream/LongStream$Wrapper;->convert(Lj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public final average()Ljava/util/OptionalDouble;
    .locals 7

    iget-object v0, p0, Lj$/util/stream/IntStream$Wrapper;->wrappedValue:Lj$/util/stream/IntStream;

    check-cast v0, Lj$/util/stream/IntPipeline;

    .line 1
    sget-object v1, Lj$/util/stream/SliceOps$4$$ExternalSyntheticLambda0;->INSTANCE$1:Lj$/util/stream/SliceOps$4$$ExternalSyntheticLambda0;

    sget-object v2, Lj$/util/stream/FindOps$$ExternalSyntheticLambda1;->INSTANCE$6:Lj$/util/stream/FindOps$$ExternalSyntheticLambda1;

    sget-object v3, Lj$/util/stream/FindOps$$ExternalSyntheticLambda4;->INSTANCE$1:Lj$/util/stream/FindOps$$ExternalSyntheticLambda4;

    invoke-virtual {v0, v1, v2, v3}, Lj$/util/stream/IntPipeline;->collect(Lj$/util/function/Supplier;Lj$/util/function/ObjIntConsumer;Lj$/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    const/4 v2, 0x1

    aget-wide v2, v0, v2

    long-to-double v2, v2

    aget-wide v4, v0, v1

    long-to-double v0, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v0

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

    iget-object v0, p0, Lj$/util/stream/IntStream$Wrapper;->wrappedValue:Lj$/util/stream/IntStream;

    check-cast v0, Lj$/util/stream/IntPipeline;

    .line 1
    sget-object v1, Lj$/util/stream/FindOps$$ExternalSyntheticLambda3;->INSTANCE$3:Lj$/util/stream/FindOps$$ExternalSyntheticLambda3;

    invoke-virtual {v0, v1}, Lj$/util/stream/IntPipeline;->mapToObj(Lj$/util/function/IntFunction;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lj$/util/stream/Stream$Wrapper;->convert(Lj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic close()V
    .locals 1

    iget-object v0, p0, Lj$/util/stream/IntStream$Wrapper;->wrappedValue:Lj$/util/stream/IntStream;

    check-cast v0, Lj$/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Lj$/util/stream/AbstractPipeline;->close()V

    return-void
.end method

.method public final synthetic collect(Ljava/util/function/Supplier;Ljava/util/function/ObjIntConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lj$/util/stream/IntStream$Wrapper;->wrappedValue:Lj$/util/stream/IntStream;

    invoke-static {p1}, Lj$/util/function/Supplier$VivifiedWrapper;->convert(Ljava/util/function/Supplier;)Lj$/util/function/Supplier;

    move-result-object p1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v1, Lj$/util/function/Supplier$VivifiedWrapper;

    const/16 v2, 0x17

    invoke-direct {v1, p2, v2}, Lj$/util/function/Supplier$VivifiedWrapper;-><init>(Ljava/lang/Object;I)V

    move-object p2, v1

    .line 2
    :goto_0
    invoke-static {p3}, Lj$/util/function/Supplier$VivifiedWrapper;->convert(Ljava/util/function/BiConsumer;)Lj$/util/function/BiConsumer;

    move-result-object p3

    check-cast v0, Lj$/util/stream/IntPipeline;

    invoke-virtual {v0, p1, p2, p3}, Lj$/util/stream/IntPipeline;->collect(Lj$/util/function/Supplier;Lj$/util/function/ObjIntConsumer;Lj$/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final count()J
    .locals 2

    iget-object v0, p0, Lj$/util/stream/IntStream$Wrapper;->wrappedValue:Lj$/util/stream/IntStream;

    check-cast v0, Lj$/util/stream/IntPipeline;

    sget-object v1, Lj$/util/stream/Node$$ExternalSyntheticLambda0;->INSTANCE$13:Lj$/util/stream/Node$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Lj$/util/stream/IntPipeline;->mapToLong(Lj$/util/function/IntToLongFunction;)Lj$/util/stream/LongStream;

    move-result-object v0

    check-cast v0, Lj$/util/stream/LongPipeline;

    invoke-virtual {v0}, Lj$/util/stream/LongPipeline;->sum()J

    move-result-wide v0

    return-wide v0
.end method

.method public final distinct()Ljava/util/stream/IntStream;
    .locals 2

    iget-object v0, p0, Lj$/util/stream/IntStream$Wrapper;->wrappedValue:Lj$/util/stream/IntStream;

    check-cast v0, Lj$/util/stream/IntPipeline;

    .line 1
    sget-object v1, Lj$/util/stream/FindOps$$ExternalSyntheticLambda3;->INSTANCE$3:Lj$/util/stream/FindOps$$ExternalSyntheticLambda3;

    invoke-virtual {v0, v1}, Lj$/util/stream/IntPipeline;->mapToObj(Lj$/util/function/IntFunction;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 2
    check-cast v0, Lj$/util/stream/ReferencePipeline;

    invoke-virtual {v0}, Lj$/util/stream/ReferencePipeline;->distinct()Lj$/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lj$/util/stream/Node$$ExternalSyntheticLambda0;->INSTANCE$11:Lj$/util/stream/Node$$ExternalSyntheticLambda0;

    check-cast v0, Lj$/util/stream/ReferencePipeline;

    invoke-virtual {v0, v1}, Lj$/util/stream/ReferencePipeline;->mapToInt(Lj$/util/function/ToIntFunction;)Lj$/util/stream/IntStream;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lj$/util/stream/IntStream$Wrapper;->convert(Lj$/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public final filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;
    .locals 7

    iget-object v0, p0, Lj$/util/stream/IntStream$Wrapper;->wrappedValue:Lj$/util/stream/IntStream;

    invoke-static {p1}, Lj$/util/function/Supplier$VivifiedWrapper;->convert(Ljava/util/function/IntPredicate;)Lj$/util/function/IntPredicate;

    move-result-object v5

    move-object v2, v0

    check-cast v2, Lj$/util/stream/IntPipeline;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lj$/util/stream/IntPipeline$3;

    sget v4, Lj$/util/stream/StreamOpFlag;->NOT_SIZED:I

    const/4 v3, 0x2

    const/4 v6, 0x4

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lj$/util/stream/IntPipeline$3;-><init>(Lj$/util/stream/AbstractPipeline;IILjava/lang/Object;I)V

    .line 2
    invoke-static {p1}, Lj$/util/stream/IntStream$Wrapper;->convert(Lj$/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object p1

    return-object p1
.end method

.method public final findAny()Ljava/util/OptionalInt;
    .locals 8

    iget-object v0, p0, Lj$/util/stream/IntStream$Wrapper;->wrappedValue:Lj$/util/stream/IntStream;

    check-cast v0, Lj$/util/stream/IntPipeline;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    new-instance v7, Lj$/util/stream/FindOps$FindOp;

    invoke-static {}, Lj$/util/OptionalInt;->empty()Lj$/util/OptionalInt;

    move-result-object v4

    sget-object v5, Lj$/util/stream/FindOps$$ExternalSyntheticLambda2;->INSTANCE:Lj$/util/stream/FindOps$$ExternalSyntheticLambda2;

    sget-object v6, Lj$/util/stream/FindOps$$ExternalSyntheticLambda5;->INSTANCE:Lj$/util/stream/FindOps$$ExternalSyntheticLambda5;

    const/4 v2, 0x0

    const/4 v3, 0x2

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lj$/util/stream/FindOps$FindOp;-><init>(ZILjava/lang/Object;Lj$/util/function/Predicate;Lj$/util/function/Supplier;)V

    .line 2
    invoke-virtual {v0, v7}, Lj$/util/stream/AbstractPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/OptionalInt;

    .line 3
    invoke-static {v0}, Lj$/util/OptionalConversions;->convert(Lj$/util/OptionalInt;)Ljava/util/OptionalInt;

    move-result-object v0

    return-object v0
.end method

.method public final findFirst()Ljava/util/OptionalInt;
    .locals 8

    iget-object v0, p0, Lj$/util/stream/IntStream$Wrapper;->wrappedValue:Lj$/util/stream/IntStream;

    check-cast v0, Lj$/util/stream/IntPipeline;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    new-instance v7, Lj$/util/stream/FindOps$FindOp;

    invoke-static {}, Lj$/util/OptionalInt;->empty()Lj$/util/OptionalInt;

    move-result-object v4

    sget-object v5, Lj$/util/stream/FindOps$$ExternalSyntheticLambda2;->INSTANCE:Lj$/util/stream/FindOps$$ExternalSyntheticLambda2;

    sget-object v6, Lj$/util/stream/FindOps$$ExternalSyntheticLambda5;->INSTANCE:Lj$/util/stream/FindOps$$ExternalSyntheticLambda5;

    const/4 v2, 0x1

    const/4 v3, 0x2

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lj$/util/stream/FindOps$FindOp;-><init>(ZILjava/lang/Object;Lj$/util/function/Predicate;Lj$/util/function/Supplier;)V

    .line 2
    invoke-virtual {v0, v7}, Lj$/util/stream/AbstractPipeline;->evaluate(Lj$/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/OptionalInt;

    .line 3
    invoke-static {v0}, Lj$/util/OptionalConversions;->convert(Lj$/util/OptionalInt;)Ljava/util/OptionalInt;

    move-result-object v0

    return-object v0
.end method

.method public final flatMap(Ljava/util/function/IntFunction;)Ljava/util/stream/IntStream;
    .locals 7

    iget-object v0, p0, Lj$/util/stream/IntStream$Wrapper;->wrappedValue:Lj$/util/stream/IntStream;

    invoke-static {p1}, Lj$/util/function/Supplier$VivifiedWrapper;->convert(Ljava/util/function/IntFunction;)Lj$/util/function/IntFunction;

    move-result-object v5

    move-object v2, v0

    check-cast v2, Lj$/util/stream/IntPipeline;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    new-instance p1, Lj$/util/stream/IntPipeline$3;

    sget v0, Lj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v0, v1

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v0, v1

    const/4 v3, 0x2

    const/4 v6, 0x3

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lj$/util/stream/IntPipeline$3;-><init>(Lj$/util/stream/AbstractPipeline;IILjava/lang/Object;I)V

    .line 2
    invoke-static {p1}, Lj$/util/stream/IntStream$Wrapper;->convert(Lj$/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic forEach(Ljava/util/function/IntConsumer;)V
    .locals 1

    iget-object v0, p0, Lj$/util/stream/IntStream$Wrapper;->wrappedValue:Lj$/util/stream/IntStream;

    invoke-static {p1}, Lj$/util/function/IntConsumer$VivifiedWrapper;->convert(Ljava/util/function/IntConsumer;)Lj$/util/function/IntConsumer;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/stream/IntStream;->forEach(Lj$/util/function/IntConsumer;)V

    return-void
.end method

.method public final synthetic forEachOrdered(Ljava/util/function/IntConsumer;)V
    .locals 1

    iget-object v0, p0, Lj$/util/stream/IntStream$Wrapper;->wrappedValue:Lj$/util/stream/IntStream;

    invoke-static {p1}, Lj$/util/function/IntConsumer$VivifiedWrapper;->convert(Ljava/util/function/IntConsumer;)Lj$/util/function/IntConsumer;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/stream/IntStream;->forEachOrdered(Lj$/util/function/IntConsumer;)V

    return-void
.end method

.method public final synthetic isParallel()Z
    .locals 1

    iget-object v0, p0, Lj$/util/stream/IntStream$Wrapper;->wrappedValue:Lj$/util/stream/IntStream;

    check-cast v0, Lj$/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Lj$/util/stream/AbstractPipeline;->isParallel()Z

    move-result v0

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/IntStream$Wrapper;->wrappedValue:Lj$/util/stream/IntStream;

    check-cast v0, Lj$/util/stream/IntPipeline;

    invoke-virtual {v0}, Lj$/util/stream/IntPipeline;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final iterator()Ljava/util/PrimitiveIterator$OfInt;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/IntStream$Wrapper;->wrappedValue:Lj$/util/stream/IntStream;

    check-cast v0, Lj$/util/stream/IntPipeline;

    .line 1
    invoke-virtual {v0}, Lj$/util/stream/IntPipeline;->spliterator()Lj$/util/Spliterator$OfInt;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Spliterators;->iterator(Lj$/util/Spliterator$OfInt;)Lj$/util/PrimitiveIterator$OfInt;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lj$/util/PrimitiveIterator$OfInt$Wrapper;->convert(Lj$/util/PrimitiveIterator$OfInt;)Ljava/util/PrimitiveIterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public final limit(J)Ljava/util/stream/IntStream;
    .locals 4

    iget-object v0, p0, Lj$/util/stream/IntStream$Wrapper;->wrappedValue:Lj$/util/stream/IntStream;

    check-cast v0, Lj$/util/stream/IntPipeline;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-ltz v3, :cond_0

    .line 1
    invoke-static {v0, v1, v2, p1, p2}, Lj$/util/stream/Node$-CC;->makeInt(Lj$/util/stream/AbstractPipeline;JJ)Lj$/util/stream/IntStream;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lj$/util/stream/IntStream$Wrapper;->convert(Lj$/util/stream/IntStream;)Ljava/util/stream/IntStream;

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

.method public final map(Ljava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;
    .locals 9

    iget-object v0, p0, Lj$/util/stream/IntStream$Wrapper;->wrappedValue:Lj$/util/stream/IntStream;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    move-object v7, p1

    goto :goto_0

    .line 1
    :cond_0
    new-instance v1, Lj$/util/function/Supplier$VivifiedWrapper;

    const/16 v2, 0xf

    invoke-direct {v1, p1, v2}, Lj$/util/function/Supplier$VivifiedWrapper;-><init>(Ljava/lang/Object;I)V

    move-object v7, v1

    .line 2
    :goto_0
    move-object v4, v0

    check-cast v4, Lj$/util/stream/IntPipeline;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lj$/util/stream/IntPipeline$3;

    const/4 v5, 0x2

    sget v0, Lj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v6, v0, v1

    const/4 v8, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lj$/util/stream/IntPipeline$3;-><init>(Lj$/util/stream/AbstractPipeline;IILjava/lang/Object;I)V

    .line 4
    invoke-static {p1}, Lj$/util/stream/IntStream$Wrapper;->convert(Lj$/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object p1

    return-object p1
.end method

.method public final mapToDouble(Ljava/util/function/IntToDoubleFunction;)Ljava/util/stream/DoubleStream;
    .locals 9

    iget-object v0, p0, Lj$/util/stream/IntStream$Wrapper;->wrappedValue:Lj$/util/stream/IntStream;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    move-object v7, p1

    goto :goto_0

    .line 1
    :cond_0
    new-instance v1, Lj$/util/function/Supplier$VivifiedWrapper;

    const/16 v2, 0xd

    invoke-direct {v1, p1, v2}, Lj$/util/function/Supplier$VivifiedWrapper;-><init>(Ljava/lang/Object;I)V

    move-object v7, v1

    .line 2
    :goto_0
    move-object v4, v0

    check-cast v4, Lj$/util/stream/IntPipeline;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lj$/util/stream/IntPipeline$6;

    const/4 v5, 0x2

    sget v0, Lj$/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Lj$/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v6, v0, v1

    const/4 v8, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lj$/util/stream/IntPipeline$6;-><init>(Lj$/util/stream/AbstractPipeline;IILjava/lang/Object;I)V

    .line 4
    invoke-static {p1}, Lj$/util/stream/DoubleStream$Wrapper;->convert(Lj$/util/stream/DoubleStream;)Ljava/util/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mapToLong(Ljava/util/function/IntToLongFunction;)Ljava/util/stream/LongStream;
    .locals 3

    iget-object v0, p0, Lj$/util/stream/IntStream$Wrapper;->wrappedValue:Lj$/util/stream/IntStream;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v1, Lj$/util/function/Supplier$VivifiedWrapper;

    const/16 v2, 0xe

    invoke-direct {v1, p1, v2}, Lj$/util/function/Supplier$VivifiedWrapper;-><init>(Ljava/lang/Object;I)V

    move-object p1, v1

    .line 2
    :goto_0
    check-cast v0, Lj$/util/stream/IntPipeline;

    invoke-virtual {v0, p1}, Lj$/util/stream/IntPipeline;->mapToLong(Lj$/util/function/IntToLongFunction;)Lj$/util/stream/LongStream;

    move-result-object p1

    invoke-static {p1}, Lj$/util/stream/LongStream$Wrapper;->convert(Lj$/util/stream/LongStream;)Ljava/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/IntStream$Wrapper;->wrappedValue:Lj$/util/stream/IntStream;

    invoke-static {p1}, Lj$/util/function/Supplier$VivifiedWrapper;->convert(Ljava/util/function/IntFunction;)Lj$/util/function/IntFunction;

    move-result-object p1

    check-cast v0, Lj$/util/stream/IntPipeline;

    invoke-virtual {v0, p1}, Lj$/util/stream/IntPipeline;->mapToObj(Lj$/util/function/IntFunction;)Lj$/util/stream/Stream;

    move-result-object p1

    invoke-static {p1}, Lj$/util/stream/Stream$Wrapper;->convert(Lj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public final max()Ljava/util/OptionalInt;
    .locals 2

    iget-object v0, p0, Lj$/util/stream/IntStream$Wrapper;->wrappedValue:Lj$/util/stream/IntStream;

    check-cast v0, Lj$/util/stream/IntPipeline;

    .line 1
    sget-object v1, Lj$/util/stream/FindOps$$ExternalSyntheticLambda1;->INSTANCE$7:Lj$/util/stream/FindOps$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Lj$/util/stream/IntPipeline;->reduce(Lj$/util/function/IntBinaryOperator;)Lj$/util/OptionalInt;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lj$/util/OptionalConversions;->convert(Lj$/util/OptionalInt;)Ljava/util/OptionalInt;

    move-result-object v0

    return-object v0
.end method

.method public final min()Ljava/util/OptionalInt;
    .locals 2

    iget-object v0, p0, Lj$/util/stream/IntStream$Wrapper;->wrappedValue:Lj$/util/stream/IntStream;

    check-cast v0, Lj$/util/stream/IntPipeline;

    .line 1
    sget-object v1, Lj$/util/stream/FindOps$$ExternalSyntheticLambda2;->INSTANCE$5:Lj$/util/stream/FindOps$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v1}, Lj$/util/stream/IntPipeline;->reduce(Lj$/util/function/IntBinaryOperator;)Lj$/util/OptionalInt;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lj$/util/OptionalConversions;->convert(Lj$/util/OptionalInt;)Ljava/util/OptionalInt;

    move-result-object v0

    return-object v0
.end method

.method public final noneMatch(Ljava/util/function/IntPredicate;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/stream/IntStream$Wrapper;->wrappedValue:Lj$/util/stream/IntStream;

    invoke-static {p1}, Lj$/util/function/Supplier$VivifiedWrapper;->convert(Ljava/util/function/IntPredicate;)Lj$/util/function/IntPredicate;

    move-result-object p1

    check-cast v0, Lj$/util/stream/IntPipeline;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lj$/util/stream/MatchOps$MatchKind;->NONE:Lj$/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v1}, Lj$/util/stream/Node$-CC;->makeInt(Lj$/util/function/IntPredicate;Lj$/util/stream/MatchOps$MatchKind;)Lj$/util/stream/TerminalOp;

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

    iget-object v0, p0, Lj$/util/stream/IntStream$Wrapper;->wrappedValue:Lj$/util/stream/IntStream;

    check-cast v0, Lj$/util/stream/AbstractPipeline;

    invoke-virtual {v0, p1}, Lj$/util/stream/AbstractPipeline;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    invoke-static {v0}, Lj$/util/stream/BaseStream$Wrapper;->convert(Lj$/util/stream/BaseStream;)Ljava/util/stream/BaseStream;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic parallel()Ljava/util/stream/BaseStream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/IntStream$Wrapper;->wrappedValue:Lj$/util/stream/IntStream;

    check-cast v0, Lj$/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Lj$/util/stream/AbstractPipeline;->parallel()Lj$/util/stream/BaseStream;

    invoke-static {v0}, Lj$/util/stream/BaseStream$Wrapper;->convert(Lj$/util/stream/BaseStream;)Ljava/util/stream/BaseStream;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic parallel()Ljava/util/stream/IntStream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/IntStream$Wrapper;->wrappedValue:Lj$/util/stream/IntStream;

    invoke-interface {v0}, Lj$/util/stream/IntStream;->parallel()Lj$/util/stream/IntStream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/IntStream$Wrapper;->convert(Lj$/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public final peek(Ljava/util/function/IntConsumer;)Ljava/util/stream/IntStream;
    .locals 7

    iget-object v0, p0, Lj$/util/stream/IntStream$Wrapper;->wrappedValue:Lj$/util/stream/IntStream;

    invoke-static {p1}, Lj$/util/function/IntConsumer$VivifiedWrapper;->convert(Ljava/util/function/IntConsumer;)Lj$/util/function/IntConsumer;

    move-result-object v5

    move-object v2, v0

    check-cast v2, Lj$/util/stream/IntPipeline;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lj$/util/stream/IntPipeline$3;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x2

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lj$/util/stream/IntPipeline$3;-><init>(Lj$/util/stream/AbstractPipeline;IILjava/lang/Object;I)V

    .line 2
    invoke-static {p1}, Lj$/util/stream/IntStream$Wrapper;->convert(Lj$/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic reduce(ILjava/util/function/IntBinaryOperator;)I
    .locals 3

    iget-object v0, p0, Lj$/util/stream/IntStream$Wrapper;->wrappedValue:Lj$/util/stream/IntStream;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v1, Lj$/util/function/Supplier$VivifiedWrapper;

    const/16 v2, 0xa

    invoke-direct {v1, p2, v2}, Lj$/util/function/Supplier$VivifiedWrapper;-><init>(Ljava/lang/Object;I)V

    move-object p2, v1

    .line 2
    :goto_0
    check-cast v0, Lj$/util/stream/IntPipeline;

    invoke-virtual {v0, p1, p2}, Lj$/util/stream/IntPipeline;->reduce(ILj$/util/function/IntBinaryOperator;)I

    move-result p1

    return p1
.end method

.method public final synthetic reduce(Ljava/util/function/IntBinaryOperator;)Ljava/util/OptionalInt;
    .locals 3

    iget-object v0, p0, Lj$/util/stream/IntStream$Wrapper;->wrappedValue:Lj$/util/stream/IntStream;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Lj$/util/function/Supplier$VivifiedWrapper;

    const/16 v2, 0xa

    invoke-direct {v1, p1, v2}, Lj$/util/function/Supplier$VivifiedWrapper;-><init>(Ljava/lang/Object;I)V

    move-object p1, v1

    .line 4
    :goto_0
    check-cast v0, Lj$/util/stream/IntPipeline;

    invoke-virtual {v0, p1}, Lj$/util/stream/IntPipeline;->reduce(Lj$/util/function/IntBinaryOperator;)Lj$/util/OptionalInt;

    move-result-object p1

    invoke-static {p1}, Lj$/util/OptionalConversions;->convert(Lj$/util/OptionalInt;)Ljava/util/OptionalInt;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic sequential()Ljava/util/stream/BaseStream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/IntStream$Wrapper;->wrappedValue:Lj$/util/stream/IntStream;

    check-cast v0, Lj$/util/stream/AbstractPipeline;

    invoke-virtual {v0}, Lj$/util/stream/AbstractPipeline;->sequential()Lj$/util/stream/BaseStream;

    invoke-static {v0}, Lj$/util/stream/BaseStream$Wrapper;->convert(Lj$/util/stream/BaseStream;)Ljava/util/stream/BaseStream;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic sequential()Ljava/util/stream/IntStream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/IntStream$Wrapper;->wrappedValue:Lj$/util/stream/IntStream;

    invoke-interface {v0}, Lj$/util/stream/IntStream;->sequential()Lj$/util/stream/IntStream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/IntStream$Wrapper;->convert(Lj$/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public final skip(J)Ljava/util/stream/IntStream;
    .locals 4

    iget-object v0, p0, Lj$/util/stream/IntStream$Wrapper;->wrappedValue:Lj$/util/stream/IntStream;

    check-cast v0, Lj$/util/stream/IntPipeline;

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
    invoke-static {v0, p1, p2, v1, v2}, Lj$/util/stream/Node$-CC;->makeInt(Lj$/util/stream/AbstractPipeline;JJ)Lj$/util/stream/IntStream;

    move-result-object v0

    .line 2
    :goto_0
    invoke-static {v0}, Lj$/util/stream/IntStream$Wrapper;->convert(Lj$/util/stream/IntStream;)Ljava/util/stream/IntStream;

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

.method public final sorted()Ljava/util/stream/IntStream;
    .locals 2

    iget-object v0, p0, Lj$/util/stream/IntStream$Wrapper;->wrappedValue:Lj$/util/stream/IntStream;

    check-cast v0, Lj$/util/stream/IntPipeline;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    new-instance v1, Lj$/util/stream/SortedOps$OfInt;

    invoke-direct {v1, v0}, Lj$/util/stream/SortedOps$OfInt;-><init>(Lj$/util/stream/AbstractPipeline;)V

    .line 2
    invoke-static {v1}, Lj$/util/stream/IntStream$Wrapper;->convert(Lj$/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic spliterator()Ljava/util/Spliterator$OfInt;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/IntStream$Wrapper;->wrappedValue:Lj$/util/stream/IntStream;

    check-cast v0, Lj$/util/stream/IntPipeline;

    invoke-virtual {v0}, Lj$/util/stream/IntPipeline;->spliterator()Lj$/util/Spliterator$OfInt;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Spliterator$OfInt$Wrapper;->convert(Lj$/util/Spliterator$OfInt;)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/IntStream$Wrapper;->wrappedValue:Lj$/util/stream/IntStream;

    check-cast v0, Lj$/util/stream/IntPipeline;

    .line 1
    invoke-virtual {v0}, Lj$/util/stream/IntPipeline;->spliterator()Lj$/util/Spliterator$OfInt;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lj$/util/Spliterator$Wrapper;->convert(Lj$/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public final sum()I
    .locals 3

    iget-object v0, p0, Lj$/util/stream/IntStream$Wrapper;->wrappedValue:Lj$/util/stream/IntStream;

    check-cast v0, Lj$/util/stream/IntPipeline;

    sget-object v1, Lj$/util/stream/Node$$ExternalSyntheticLambda0;->INSTANCE$12:Lj$/util/stream/Node$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lj$/util/stream/IntPipeline;->reduce(ILj$/util/function/IntBinaryOperator;)I

    move-result v0

    return v0
.end method

.method public final summaryStatistics()Ljava/util/IntSummaryStatistics;
    .locals 4

    iget-object v0, p0, Lj$/util/stream/IntStream$Wrapper;->wrappedValue:Lj$/util/stream/IntStream;

    check-cast v0, Lj$/util/stream/IntPipeline;

    .line 1
    sget-object v1, Lj$/util/stream/FindOps$$ExternalSyntheticLambda1;->INSTANCE$1:Lj$/util/stream/FindOps$$ExternalSyntheticLambda1;

    sget-object v2, Lj$/util/stream/Node$$ExternalSyntheticLambda0;->INSTANCE$10:Lj$/util/stream/Node$$ExternalSyntheticLambda0;

    sget-object v3, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda0;->INSTANCE:Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1, v2, v3}, Lj$/util/stream/IntPipeline;->collect(Lj$/util/function/Supplier;Lj$/util/function/ObjIntConsumer;Lj$/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/IntSummaryStatistics;

    .line 2
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Java 8+ API desugaring (library desugaring) cannot convert to java.util.IntSummaryStatistics"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toArray()[I
    .locals 2

    iget-object v0, p0, Lj$/util/stream/IntStream$Wrapper;->wrappedValue:Lj$/util/stream/IntStream;

    check-cast v0, Lj$/util/stream/IntPipeline;

    sget-object v1, Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda8;->INSTANCE:Lj$/util/stream/IntPipeline$$ExternalSyntheticLambda8;

    invoke-virtual {v0, v1}, Lj$/util/stream/AbstractPipeline;->evaluateToArrayNode(Lj$/util/function/IntFunction;)Lj$/util/stream/Node;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Node$OfInt;

    invoke-static {v0}, Lj$/util/stream/Nodes;->flattenInt(Lj$/util/stream/Node$OfInt;)Lj$/util/stream/Node$OfInt;

    move-result-object v0

    invoke-interface {v0}, Lj$/util/stream/Node$OfPrimitive;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public final synthetic unordered()Ljava/util/stream/BaseStream;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/IntStream$Wrapper;->wrappedValue:Lj$/util/stream/IntStream;

    check-cast v0, Lj$/util/stream/IntPipeline;

    invoke-virtual {v0}, Lj$/util/stream/IntPipeline;->unordered()Lj$/util/stream/BaseStream;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/BaseStream$Wrapper;->convert(Lj$/util/stream/BaseStream;)Ljava/util/stream/BaseStream;

    move-result-object v0

    return-object v0
.end method
