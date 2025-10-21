.class final Lj$/util/stream/Nodes$EmptyNode$OfDouble;
.super Lj$/util/stream/Nodes$EmptyNode;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/Node$OfDouble;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lj$/util/stream/Nodes$EmptyNode;-><init>()V

    return-void
.end method


# virtual methods
.method public final asPrimitiveArray()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lj$/util/stream/Nodes;->access$700()[D

    move-result-object v0

    return-object v0
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

.method public final synthetic forEach(Lj$/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/Node$-CC;->$default$forEach(Lj$/util/stream/Node$OfDouble;Lj$/util/function/Consumer;)V

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
    invoke-virtual {p0, p1}, Lj$/util/stream/Nodes$EmptyNode$OfDouble;->getChild(I)Lj$/util/stream/Node$OfPrimitive;

    const/4 p1, 0x0

    throw p1
.end method

.method public final spliterator()Lj$/util/Spliterator$OfPrimitive;
    .locals 1

    .line 1
    invoke-static {}, Lj$/util/Spliterators;->emptyDoubleSpliterator()Lj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public final spliterator()Lj$/util/Spliterator;
    .locals 1

    .line 2
    invoke-static {}, Lj$/util/Spliterators;->emptyDoubleSpliterator()Lj$/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic truncate(JJLj$/util/function/IntFunction;)Lj$/util/stream/Node;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lj$/util/stream/Node$-CC;->$default$truncate(Lj$/util/stream/Node$OfDouble;JJ)Lj$/util/stream/Node$OfDouble;

    move-result-object p1

    return-object p1
.end method
