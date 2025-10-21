.class Lj$/util/stream/Nodes$DoubleArrayNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/Node$OfDouble;


# instance fields
.field final array:[D

.field curSize:I


# direct methods
.method constructor <init>(J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x7ffffff7

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    long-to-int p2, p1

    new-array p1, p2, [D

    iput-object p1, p0, Lj$/util/stream/Nodes$DoubleArrayNode;->array:[D

    const/4 p1, 0x0

    iput p1, p0, Lj$/util/stream/Nodes$DoubleArrayNode;->curSize:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Stream size exceeds max array size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>([D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/stream/Nodes$DoubleArrayNode;->array:[D

    array-length p1, p1

    iput p1, p0, Lj$/util/stream/Nodes$DoubleArrayNode;->curSize:I

    return-void
.end method


# virtual methods
.method public final synthetic asArray(Lj$/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/Node$-CC;->$default$asArray(Lj$/util/stream/Node$OfPrimitive;Lj$/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final asPrimitiveArray()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lj$/util/stream/Nodes$DoubleArrayNode;->array:[D

    array-length v1, v0

    iget v2, p0, Lj$/util/stream/Nodes$DoubleArrayNode;->curSize:I

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final copyInto(Ljava/lang/Object;I)V
    .locals 3

    check-cast p1, [D

    iget-object v0, p0, Lj$/util/stream/Nodes$DoubleArrayNode;->array:[D

    iget v1, p0, Lj$/util/stream/Nodes$DoubleArrayNode;->curSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final synthetic copyInto([Ljava/lang/Double;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lj$/util/stream/Node$-CC;->$default$copyInto(Lj$/util/stream/Node$OfDouble;[Ljava/lang/Double;I)V

    return-void
.end method

.method public final bridge synthetic copyInto([Ljava/lang/Object;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lj$/util/stream/Node$-CC;->$default$copyInto(Lj$/util/stream/Node$OfDouble;[Ljava/lang/Object;I)V

    return-void
.end method

.method public final count()J
    .locals 2

    iget v0, p0, Lj$/util/stream/Nodes$DoubleArrayNode;->curSize:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final synthetic forEach(Lj$/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/Node$-CC;->$default$forEach(Lj$/util/stream/Node$OfDouble;Lj$/util/function/Consumer;)V

    return-void
.end method

.method public final forEach(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lj$/util/function/DoubleConsumer;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lj$/util/stream/Nodes$DoubleArrayNode;->curSize:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lj$/util/stream/Nodes$DoubleArrayNode;->array:[D

    aget-wide v2, v1, v0

    invoke-interface {p1, v2, v3}, Lj$/util/function/DoubleConsumer;->accept(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getChild(I)Lj$/util/stream/Node$OfPrimitive;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final bridge synthetic getChild(I)Lj$/util/stream/Node;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lj$/util/stream/Nodes$DoubleArrayNode;->getChild(I)Lj$/util/stream/Node$OfPrimitive;

    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic getChildCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final spliterator()Lj$/util/Spliterator$OfPrimitive;
    .locals 3

    .line 1
    iget-object v0, p0, Lj$/util/stream/Nodes$DoubleArrayNode;->array:[D

    iget v1, p0, Lj$/util/stream/Nodes$DoubleArrayNode;->curSize:I

    const/4 v2, 0x0

    .line 2
    invoke-static {v0, v2, v1}, Lj$/util/Spliterators;->spliterator([DII)Lj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public final spliterator()Lj$/util/Spliterator;
    .locals 3

    .line 3
    iget-object v0, p0, Lj$/util/stream/Nodes$DoubleArrayNode;->array:[D

    iget v1, p0, Lj$/util/stream/Nodes$DoubleArrayNode;->curSize:I

    const/4 v2, 0x0

    .line 4
    invoke-static {v0, v2, v1}, Lj$/util/Spliterators;->spliterator([DII)Lj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lj$/util/stream/Nodes$DoubleArrayNode;->array:[D

    array-length v1, v1

    iget v2, p0, Lj$/util/stream/Nodes$DoubleArrayNode;->curSize:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lj$/util/stream/Nodes$DoubleArrayNode;->array:[D

    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "DoubleArrayNode[%d][%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic truncate(JJLj$/util/function/IntFunction;)Lj$/util/stream/Node;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lj$/util/stream/Node$-CC;->$default$truncate(Lj$/util/stream/Node$OfDouble;JJ)Lj$/util/stream/Node$OfDouble;

    move-result-object p1

    return-object p1
.end method
