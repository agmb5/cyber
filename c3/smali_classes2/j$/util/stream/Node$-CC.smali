.class public abstract synthetic Lj$/util/stream/Node$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$accept()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called wrong accept method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static $default$accept(Lj$/util/stream/Sink$OfDouble;Ljava/lang/Double;)V
    .locals 2

    sget-boolean v0, Lj$/util/stream/Tripwire;->ENABLED:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lj$/util/stream/Sink$OfDouble;->accept(D)V

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Sink.OfDouble.accept(Double)"

    invoke-static {p0, p1}, Lj$/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static bridge synthetic $default$accept(Lj$/util/stream/Sink$OfDouble;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Double;

    invoke-interface {p0, p1}, Lj$/util/stream/Sink$OfDouble;->accept(Ljava/lang/Double;)V

    return-void
.end method

.method public static $default$accept(Lj$/util/stream/Sink$OfInt;Ljava/lang/Integer;)V
    .locals 1

    sget-boolean v0, Lj$/util/stream/Tripwire;->ENABLED:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lj$/util/stream/Sink$OfInt;->accept(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Sink.OfInt.accept(Integer)"

    invoke-static {p0, p1}, Lj$/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static bridge synthetic $default$accept(Lj$/util/stream/Sink$OfInt;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-interface {p0, p1}, Lj$/util/stream/Sink$OfInt;->accept(Ljava/lang/Integer;)V

    return-void
.end method

.method public static $default$accept(Lj$/util/stream/Sink$OfLong;Ljava/lang/Long;)V
    .locals 2

    sget-boolean v0, Lj$/util/stream/Tripwire;->ENABLED:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lj$/util/stream/Sink$OfLong;->accept(J)V

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Sink.OfLong.accept(Long)"

    invoke-static {p0, p1}, Lj$/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static bridge synthetic $default$accept(Lj$/util/stream/Sink$OfLong;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-interface {p0, p1}, Lj$/util/stream/Sink$OfLong;->accept(Ljava/lang/Long;)V

    return-void
.end method

.method public static $default$accept$1()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called wrong accept method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static $default$accept$2()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "called wrong accept method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static $default$asArray(Lj$/util/stream/Node$OfPrimitive;Lj$/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 5

    sget-boolean v0, Lj$/util/stream/Tripwire;->ENABLED:Z

    if-nez v0, :cond_1

    invoke-interface {p0}, Lj$/util/stream/Node;->count()J

    move-result-wide v0

    const-wide/32 v2, 0x7ffffff7

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    invoke-interface {p0}, Lj$/util/stream/Node;->count()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-interface {p1, v1}, Lj$/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lj$/util/stream/Node;->copyInto([Ljava/lang/Object;I)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Stream size exceeds max array size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Node.OfPrimitive.asArray"

    invoke-static {p0, p1}, Lj$/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static $default$copyInto(Lj$/util/stream/Node$OfDouble;[Ljava/lang/Double;I)V
    .locals 4

    sget-boolean v0, Lj$/util/stream/Tripwire;->ENABLED:Z

    if-nez v0, :cond_1

    invoke-interface {p0}, Lj$/util/stream/Node$OfPrimitive;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    add-int v1, p2, v0

    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Node.OfDouble.copyInto(Double[], int)"

    invoke-static {p0, p1}, Lj$/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static bridge synthetic $default$copyInto(Lj$/util/stream/Node$OfDouble;[Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, [Ljava/lang/Double;

    invoke-interface {p0, p1, p2}, Lj$/util/stream/Node$OfDouble;->copyInto([Ljava/lang/Double;I)V

    return-void
.end method

.method public static $default$copyInto(Lj$/util/stream/Node$OfInt;[Ljava/lang/Integer;I)V
    .locals 3

    sget-boolean v0, Lj$/util/stream/Tripwire;->ENABLED:Z

    if-nez v0, :cond_1

    invoke-interface {p0}, Lj$/util/stream/Node$OfPrimitive;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    add-int v1, p2, v0

    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Node.OfInt.copyInto(Integer[], int)"

    invoke-static {p0, p1}, Lj$/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static bridge synthetic $default$copyInto(Lj$/util/stream/Node$OfInt;[Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-interface {p0, p1, p2}, Lj$/util/stream/Node$OfInt;->copyInto([Ljava/lang/Integer;I)V

    return-void
.end method

.method public static $default$copyInto(Lj$/util/stream/Node$OfLong;[Ljava/lang/Long;I)V
    .locals 4

    sget-boolean v0, Lj$/util/stream/Tripwire;->ENABLED:Z

    if-nez v0, :cond_1

    invoke-interface {p0}, Lj$/util/stream/Node$OfPrimitive;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    add-int v1, p2, v0

    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Node.OfInt.copyInto(Long[], int)"

    invoke-static {p0, p1}, Lj$/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static bridge synthetic $default$copyInto(Lj$/util/stream/Node$OfLong;[Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, [Ljava/lang/Long;

    invoke-interface {p0, p1, p2}, Lj$/util/stream/Node$OfLong;->copyInto([Ljava/lang/Long;I)V

    return-void
.end method

.method public static $default$forEach(Lj$/util/stream/Node$OfDouble;Lj$/util/function/Consumer;)V
    .locals 1

    instance-of v0, p1, Lj$/util/function/DoubleConsumer;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/util/function/DoubleConsumer;

    invoke-interface {p0, p1}, Lj$/util/stream/Node$OfPrimitive;->forEach(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-boolean v0, Lj$/util/stream/Tripwire;->ENABLED:Z

    if-nez v0, :cond_1

    invoke-interface {p0}, Lj$/util/stream/Node$OfPrimitive;->spliterator()Lj$/util/Spliterator$OfPrimitive;

    move-result-object p0

    check-cast p0, Lj$/util/Spliterator$OfDouble;

    invoke-interface {p0, p1}, Lj$/util/Spliterator$OfDouble;->forEachRemaining(Lj$/util/function/Consumer;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Node.OfLong.forEachRemaining(Consumer)"

    invoke-static {p0, p1}, Lj$/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static $default$forEach(Lj$/util/stream/Node$OfInt;Lj$/util/function/Consumer;)V
    .locals 1

    instance-of v0, p1, Lj$/util/function/IntConsumer;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/util/function/IntConsumer;

    invoke-interface {p0, p1}, Lj$/util/stream/Node$OfPrimitive;->forEach(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-boolean v0, Lj$/util/stream/Tripwire;->ENABLED:Z

    if-nez v0, :cond_1

    invoke-interface {p0}, Lj$/util/stream/Node$OfPrimitive;->spliterator()Lj$/util/Spliterator$OfPrimitive;

    move-result-object p0

    check-cast p0, Lj$/util/Spliterator$OfInt;

    invoke-interface {p0, p1}, Lj$/util/Spliterator$OfInt;->forEachRemaining(Lj$/util/function/Consumer;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Node.OfInt.forEachRemaining(Consumer)"

    invoke-static {p0, p1}, Lj$/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static $default$forEach(Lj$/util/stream/Node$OfLong;Lj$/util/function/Consumer;)V
    .locals 1

    instance-of v0, p1, Lj$/util/function/LongConsumer;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/util/function/LongConsumer;

    invoke-interface {p0, p1}, Lj$/util/stream/Node$OfPrimitive;->forEach(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-boolean v0, Lj$/util/stream/Tripwire;->ENABLED:Z

    if-nez v0, :cond_1

    invoke-interface {p0}, Lj$/util/stream/Node$OfPrimitive;->spliterator()Lj$/util/Spliterator$OfPrimitive;

    move-result-object p0

    check-cast p0, Lj$/util/Spliterator$OfLong;

    invoke-interface {p0, p1}, Lj$/util/Spliterator$OfLong;->forEachRemaining(Lj$/util/function/Consumer;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "{0} calling Node.OfLong.forEachRemaining(Consumer)"

    invoke-static {p0, p1}, Lj$/util/stream/Tripwire;->trip(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static $default$truncate(Lj$/util/stream/Node$OfDouble;JJ)Lj$/util/stream/Node$OfDouble;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    invoke-interface {p0}, Lj$/util/stream/Node;->count()J

    move-result-wide v0

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    sub-long/2addr p3, p1

    invoke-interface {p0}, Lj$/util/stream/Node$OfPrimitive;->spliterator()Lj$/util/Spliterator$OfPrimitive;

    move-result-object p0

    check-cast p0, Lj$/util/Spliterator$OfDouble;

    invoke-static {p3, p4}, Lj$/util/stream/Nodes;->doubleBuilder(J)Lj$/util/stream/Node$Builder$OfDouble;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Lj$/util/stream/Sink;->begin(J)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    int-to-long v3, v2

    cmp-long v5, v3, p1

    if-gez v5, :cond_1

    sget-object v3, Lj$/util/stream/Node$OfDouble$$ExternalSyntheticLambda0;->INSTANCE:Lj$/util/stream/Node$OfDouble$$ExternalSyntheticLambda0;

    invoke-interface {p0, v3}, Lj$/util/Spliterator$OfDouble;->tryAdvance(Lj$/util/function/DoubleConsumer;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    int-to-long p1, v1

    cmp-long v2, p1, p3

    if-gez v2, :cond_2

    invoke-interface {p0, v0}, Lj$/util/Spliterator$OfDouble;->tryAdvance(Lj$/util/function/DoubleConsumer;)Z

    move-result p1

    if-eqz p1, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lj$/util/stream/Sink;->end()V

    invoke-interface {v0}, Lj$/util/stream/Node$Builder$OfDouble;->build()Lj$/util/stream/Node$OfDouble;

    move-result-object p0

    return-object p0
.end method

.method public static $default$truncate(Lj$/util/stream/Node$OfInt;JJ)Lj$/util/stream/Node$OfInt;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    invoke-interface {p0}, Lj$/util/stream/Node;->count()J

    move-result-wide v0

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    sub-long/2addr p3, p1

    invoke-interface {p0}, Lj$/util/stream/Node$OfPrimitive;->spliterator()Lj$/util/Spliterator$OfPrimitive;

    move-result-object p0

    check-cast p0, Lj$/util/Spliterator$OfInt;

    invoke-static {p3, p4}, Lj$/util/stream/Nodes;->intBuilder(J)Lj$/util/stream/Node$Builder$OfInt;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Lj$/util/stream/Sink;->begin(J)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    int-to-long v3, v2

    cmp-long v5, v3, p1

    if-gez v5, :cond_1

    sget-object v3, Lj$/util/stream/Node$OfInt$$ExternalSyntheticLambda0;->INSTANCE:Lj$/util/stream/Node$OfInt$$ExternalSyntheticLambda0;

    invoke-interface {p0, v3}, Lj$/util/Spliterator$OfInt;->tryAdvance(Lj$/util/function/IntConsumer;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    int-to-long p1, v1

    cmp-long v2, p1, p3

    if-gez v2, :cond_2

    invoke-interface {p0, v0}, Lj$/util/Spliterator$OfInt;->tryAdvance(Lj$/util/function/IntConsumer;)Z

    move-result p1

    if-eqz p1, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lj$/util/stream/Sink;->end()V

    invoke-interface {v0}, Lj$/util/stream/Node$Builder$OfInt;->build()Lj$/util/stream/Node$OfInt;

    move-result-object p0

    return-object p0
.end method

.method public static $default$truncate(Lj$/util/stream/Node$OfLong;JJ)Lj$/util/stream/Node$OfLong;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    invoke-interface {p0}, Lj$/util/stream/Node;->count()J

    move-result-wide v0

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    sub-long/2addr p3, p1

    invoke-interface {p0}, Lj$/util/stream/Node$OfPrimitive;->spliterator()Lj$/util/Spliterator$OfPrimitive;

    move-result-object p0

    check-cast p0, Lj$/util/Spliterator$OfLong;

    invoke-static {p3, p4}, Lj$/util/stream/Nodes;->longBuilder(J)Lj$/util/stream/Node$Builder$OfLong;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Lj$/util/stream/Sink;->begin(J)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    int-to-long v3, v2

    cmp-long v5, v3, p1

    if-gez v5, :cond_1

    sget-object v3, Lj$/util/stream/Node$OfLong$$ExternalSyntheticLambda0;->INSTANCE:Lj$/util/stream/Node$OfLong$$ExternalSyntheticLambda0;

    invoke-interface {p0, v3}, Lj$/util/Spliterator$OfLong;->tryAdvance(Lj$/util/function/LongConsumer;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    int-to-long p1, v1

    cmp-long v2, p1, p3

    if-gez v2, :cond_2

    invoke-interface {p0, v0}, Lj$/util/Spliterator$OfLong;->tryAdvance(Lj$/util/function/LongConsumer;)Z

    move-result p1

    if-eqz p1, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lj$/util/stream/Sink;->end()V

    invoke-interface {v0}, Lj$/util/stream/Node$Builder$OfLong;->build()Lj$/util/stream/Node$OfLong;

    move-result-object p0

    return-object p0
.end method

.method public static $default$truncate(Lj$/util/stream/Node;JJLj$/util/function/IntFunction;)Lj$/util/stream/Node;
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    invoke-interface {p0}, Lj$/util/stream/Node;->count()J

    move-result-wide v0

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lj$/util/stream/Node;->spliterator()Lj$/util/Spliterator;

    move-result-object p0

    sub-long/2addr p3, p1

    invoke-static {p3, p4, p5}, Lj$/util/stream/Nodes;->builder(JLj$/util/function/IntFunction;)Lj$/util/stream/Node$Builder;

    move-result-object p5

    invoke-interface {p5, p3, p4}, Lj$/util/stream/Sink;->begin(J)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    int-to-long v2, v1

    cmp-long v4, v2, p1

    if-gez v4, :cond_1

    sget-object v2, Lj$/util/stream/Node$$ExternalSyntheticLambda0;->INSTANCE:Lj$/util/stream/Node$$ExternalSyntheticLambda0;

    invoke-interface {p0, v2}, Lj$/util/Spliterator;->tryAdvance(Lj$/util/function/Consumer;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    int-to-long p1, v0

    cmp-long v1, p1, p3

    if-gez v1, :cond_2

    invoke-interface {p0, p5}, Lj$/util/Spliterator;->tryAdvance(Lj$/util/function/Consumer;)Z

    move-result p1

    if-eqz p1, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {p5}, Lj$/util/stream/Sink;->end()V

    invoke-interface {p5}, Lj$/util/stream/Node$Builder;->build()Lj$/util/stream/Node;

    move-result-object p0

    return-object p0
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static access$000(JJ)J
    .locals 5

    const-wide v0, 0x7fffffffffffffffL

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-ltz v4, :cond_0

    add-long/2addr p0, p2

    goto :goto_0

    :cond_0
    move-wide p0, v0

    :goto_0
    cmp-long p2, p0, v2

    if-ltz p2, :cond_1

    move-wide v0, p0

    :cond_1
    return-wide v0
.end method

.method static access$200(ILj$/util/Spliterator;JJ)Lj$/util/Spliterator;
    .locals 11

    const-wide v0, 0x7fffffffffffffffL

    const-wide/16 v2, 0x0

    cmp-long v4, p4, v2

    if-ltz v4, :cond_0

    add-long v4, p2, p4

    goto :goto_0

    :cond_0
    move-wide v4, v0

    :goto_0
    cmp-long v6, v4, v2

    if-ltz v6, :cond_1

    move-wide v9, v4

    goto :goto_1

    :cond_1
    move-wide v9, v0

    .line 1
    :goto_1
    sget-object v0, Lj$/util/stream/SliceOps$5;->$SwitchMap$java$util$stream$StreamShape:[I

    if-eqz p0, :cond_6

    add-int/lit8 v1, p0, -0x1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    new-instance v0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;

    move-object v6, p1

    check-cast v6, Lj$/util/Spliterator$OfDouble;

    move-object v5, v0

    move-wide v7, p2

    invoke-direct/range {v5 .. v10}, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;-><init>(Lj$/util/Spliterator$OfDouble;JJ)V

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown shape "

    .line 2
    invoke-static {v1}, Lj$/util/stream/StreamShape$EnumUnboxingLocalUtility;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    invoke-static {p0}, Lj$/util/stream/StreamShape$EnumUnboxingLocalUtility;->stringValueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfLong;

    move-object v6, p1

    check-cast v6, Lj$/util/Spliterator$OfLong;

    move-object v5, v0

    move-wide v7, p2

    invoke-direct/range {v5 .. v10}, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfLong;-><init>(Lj$/util/Spliterator$OfLong;JJ)V

    goto :goto_2

    :cond_4
    new-instance v0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfInt;

    move-object v6, p1

    check-cast v6, Lj$/util/Spliterator$OfInt;

    move-object v5, v0

    move-wide v7, p2

    invoke-direct/range {v5 .. v10}, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfInt;-><init>(Lj$/util/Spliterator$OfInt;JJ)V

    goto :goto_2

    :cond_5
    new-instance v6, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, v9

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;-><init>(Lj$/util/Spliterator;JJ)V

    :goto_2
    return-object v0

    :cond_6
    const/4 v0, 0x0

    throw v0
.end method

.method static access$300(JJJ)J
    .locals 5

    const-wide/16 v0, -0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p0, v2

    if-ltz v4, :cond_0

    sub-long/2addr p0, p2

    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public static doubleStream(Lj$/util/Spliterator$OfDouble;)Lj$/util/stream/DoubleStream;
    .locals 2

    new-instance v0, Lj$/util/stream/DoublePipeline$Head;

    invoke-static {p0}, Lj$/util/stream/StreamOpFlag;->fromCharacteristics(Lj$/util/Spliterator;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lj$/util/stream/DoublePipeline$Head;-><init>(Lj$/util/Spliterator;I)V

    return-object v0
.end method

.method private static flags(J)I
    .locals 4

    sget v0, Lj$/util/stream/StreamOpFlag;->NOT_SIZED:I

    const-wide/16 v1, -0x1

    cmp-long v3, p0, v1

    if-eqz v3, :cond_0

    sget p0, Lj$/util/stream/StreamOpFlag;->IS_SHORT_CIRCUIT:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    or-int/2addr p0, v0

    return p0
.end method

.method public static intStream(Lj$/util/Spliterator$OfInt;)Lj$/util/stream/IntStream;
    .locals 2

    new-instance v0, Lj$/util/stream/IntPipeline$Head;

    invoke-static {p0}, Lj$/util/stream/StreamOpFlag;->fromCharacteristics(Lj$/util/Spliterator;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lj$/util/stream/IntPipeline$Head;-><init>(Lj$/util/Spliterator;I)V

    return-object v0
.end method

.method public static longStream(Lj$/util/Spliterator$OfLong;)Lj$/util/stream/LongStream;
    .locals 2

    new-instance v0, Lj$/util/stream/LongPipeline$Head;

    invoke-static {p0}, Lj$/util/stream/StreamOpFlag;->fromCharacteristics(Lj$/util/Spliterator;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lj$/util/stream/LongPipeline$Head;-><init>(Lj$/util/Spliterator;I)V

    return-object v0
.end method

.method public static makeDouble(Lj$/util/stream/AbstractPipeline;JJ)Lj$/util/stream/DoubleStream;
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    new-instance v0, Lj$/util/stream/SliceOps$4;

    const/4 v5, 0x4

    invoke-static {p3, p4}, Lj$/util/stream/Node$-CC;->flags(J)I

    move-result v6

    move-object v3, v0

    move-object v4, p0

    move-wide v7, p1

    move-wide v9, p3

    invoke-direct/range {v3 .. v10}, Lj$/util/stream/SliceOps$4;-><init>(Lj$/util/stream/AbstractPipeline;IIJJ)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Skip must be non-negative: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static makeDouble(Lj$/util/function/DoublePredicate;Lj$/util/stream/MatchOps$MatchKind;)Lj$/util/stream/TerminalOp;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/stream/MatchOps$MatchOp;

    new-instance v1, Lj$/util/stream/MatchOps$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lj$/util/stream/MatchOps$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const/4 p0, 0x4

    invoke-direct {v0, p0, p1, v1}, Lj$/util/stream/MatchOps$MatchOp;-><init>(ILj$/util/stream/MatchOps$MatchKind;Lj$/util/function/Supplier;)V

    return-object v0
.end method

.method public static makeInt(Lj$/util/stream/AbstractPipeline;JJ)Lj$/util/stream/IntStream;
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    new-instance v0, Lj$/util/stream/SliceOps$2;

    const/4 v5, 0x2

    invoke-static {p3, p4}, Lj$/util/stream/Node$-CC;->flags(J)I

    move-result v6

    move-object v3, v0

    move-object v4, p0

    move-wide v7, p1

    move-wide v9, p3

    invoke-direct/range {v3 .. v10}, Lj$/util/stream/SliceOps$2;-><init>(Lj$/util/stream/AbstractPipeline;IIJJ)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Skip must be non-negative: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static makeInt(Lj$/util/function/IntPredicate;Lj$/util/stream/MatchOps$MatchKind;)Lj$/util/stream/TerminalOp;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/stream/MatchOps$MatchOp;

    new-instance v1, Lj$/util/stream/MatchOps$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, p1, p0, v2}, Lj$/util/stream/MatchOps$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {v0, v2, p1, v1}, Lj$/util/stream/MatchOps$MatchOp;-><init>(ILj$/util/stream/MatchOps$MatchKind;Lj$/util/function/Supplier;)V

    return-object v0
.end method

.method public static makeLong(Lj$/util/stream/AbstractPipeline;JJ)Lj$/util/stream/LongStream;
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    new-instance v0, Lj$/util/stream/SliceOps$3;

    const/4 v5, 0x3

    invoke-static {p3, p4}, Lj$/util/stream/Node$-CC;->flags(J)I

    move-result v6

    move-object v3, v0

    move-object v4, p0

    move-wide v7, p1

    move-wide v9, p3

    invoke-direct/range {v3 .. v10}, Lj$/util/stream/SliceOps$3;-><init>(Lj$/util/stream/AbstractPipeline;IIJJ)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Skip must be non-negative: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static makeLong(Lj$/util/function/LongPredicate;Lj$/util/stream/MatchOps$MatchKind;)Lj$/util/stream/TerminalOp;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/stream/MatchOps$MatchOp;

    new-instance v1, Lj$/util/stream/MatchOps$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v1, p1, p0, v2}, Lj$/util/stream/MatchOps$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {v0, v2, p1, v1}, Lj$/util/stream/MatchOps$MatchOp;-><init>(ILj$/util/stream/MatchOps$MatchKind;Lj$/util/function/Supplier;)V

    return-object v0
.end method

.method public static makeRef(Lj$/util/stream/AbstractPipeline;JJ)Lj$/util/stream/Stream;
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    new-instance v0, Lj$/util/stream/SliceOps$1;

    const/4 v5, 0x1

    invoke-static {p3, p4}, Lj$/util/stream/Node$-CC;->flags(J)I

    move-result v6

    move-object v3, v0

    move-object v4, p0

    move-wide v7, p1

    move-wide v9, p3

    invoke-direct/range {v3 .. v10}, Lj$/util/stream/SliceOps$1;-><init>(Lj$/util/stream/AbstractPipeline;IIJJ)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Skip must be non-negative: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static makeRef(Lj$/util/function/Predicate;Lj$/util/stream/MatchOps$MatchKind;)Lj$/util/stream/TerminalOp;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/stream/MatchOps$MatchOp;

    new-instance v1, Lj$/util/stream/MatchOps$$ExternalSyntheticLambda0;

    const/4 v2, 0x4

    invoke-direct {v1, p1, p0, v2}, Lj$/util/stream/MatchOps$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const/4 p0, 0x1

    invoke-direct {v0, p0, p1, v1}, Lj$/util/stream/MatchOps$MatchOp;-><init>(ILj$/util/stream/MatchOps$MatchKind;Lj$/util/function/Supplier;)V

    return-object v0
.end method

.method public static makeRef(Lj$/util/function/Supplier;Lj$/util/function/BiConsumer;Lj$/util/function/BiConsumer;)Lj$/util/stream/TerminalOp;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lj$/util/stream/ReduceOps$1;

    const/4 v1, 0x1

    const/4 v5, 0x3

    move-object v0, v6

    move-object v2, p2

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/ReduceOps$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    return-object v6
.end method

.method public static stream(Lj$/util/Spliterator;Z)Lj$/util/stream/Stream;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/stream/ReferencePipeline$Head;

    invoke-static {p0}, Lj$/util/stream/StreamOpFlag;->fromCharacteristics(Lj$/util/Spliterator;)I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Lj$/util/stream/ReferencePipeline$Head;-><init>(Lj$/util/Spliterator;IZ)V

    return-object v0
.end method


# virtual methods
.method abstract copyInto(Lj$/util/stream/Sink;Lj$/util/Spliterator;)V
.end method

.method abstract copyIntoWithCancel(Lj$/util/stream/Sink;Lj$/util/Spliterator;)V
.end method

.method abstract evaluate(Lj$/util/Spliterator;ZLj$/util/function/IntFunction;)Lj$/util/stream/Node;
.end method

.method abstract exactOutputSizeIfKnown(Lj$/util/Spliterator;)J
.end method

.method abstract getSourceShape$enumunboxing$()I
.end method

.method abstract getStreamAndOpFlags()I
.end method

.method abstract makeNodeBuilder(JLj$/util/function/IntFunction;)Lj$/util/stream/Node$Builder;
.end method

.method abstract wrapAndCopyInto(Lj$/util/stream/Sink;Lj$/util/Spliterator;)Lj$/util/stream/Sink;
.end method

.method abstract wrapSink(Lj$/util/stream/Sink;)Lj$/util/stream/Sink;
.end method

.method abstract wrapSpliterator(Lj$/util/Spliterator;)Lj$/util/Spliterator;
.end method
