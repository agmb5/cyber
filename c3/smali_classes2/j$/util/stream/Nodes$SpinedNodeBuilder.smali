.class final Lj$/util/stream/Nodes$SpinedNodeBuilder;
.super Lj$/util/stream/SpinedBuffer;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/Node;
.implements Lj$/util/stream/Node$Builder;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lj$/util/stream/SpinedBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic accept(D)V
    .locals 0

    invoke-static {}, Lj$/util/stream/Node$-CC;->$default$accept()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic accept(I)V
    .locals 0

    invoke-static {}, Lj$/util/stream/Node$-CC;->$default$accept$1()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic accept(J)V
    .locals 0

    invoke-static {}, Lj$/util/stream/Node$-CC;->$default$accept$2()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final accept(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Lj$/util/stream/SpinedBuffer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final asArray(Lj$/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0}, Lj$/util/stream/AbstractSpinedBuffer;->count()J

    move-result-wide v0

    const-wide/32 v2, 0x7ffffff7

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    long-to-int v1, v0

    invoke-interface {p1, v1}, Lj$/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lj$/util/stream/Nodes$SpinedNodeBuilder;->copyInto([Ljava/lang/Object;I)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Stream size exceeds max array size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final begin(J)V
    .locals 0

    invoke-virtual {p0}, Lj$/util/stream/SpinedBuffer;->clear()V

    invoke-virtual {p0, p1, p2}, Lj$/util/stream/SpinedBuffer;->ensureCapacity(J)V

    return-void
.end method

.method public final build()Lj$/util/stream/Node;
    .locals 0

    return-object p0
.end method

.method public final synthetic cancellationRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final copyInto([Ljava/lang/Object;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lj$/util/stream/SpinedBuffer;->copyInto([Ljava/lang/Object;I)V

    return-void
.end method

.method public final end()V
    .locals 0

    return-void
.end method

.method public final forEach(Lj$/util/function/Consumer;)V
    .locals 0

    invoke-super {p0, p1}, Lj$/util/stream/SpinedBuffer;->forEach(Lj$/util/function/Consumer;)V

    return-void
.end method

.method public final getChild(I)Lj$/util/stream/Node;
    .locals 0

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final synthetic getChildCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final spliterator()Lj$/util/Spliterator;
    .locals 1

    invoke-super {p0}, Lj$/util/stream/SpinedBuffer;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic truncate(JJLj$/util/function/IntFunction;)Lj$/util/stream/Node;
    .locals 0

    invoke-static/range {p0 .. p5}, Lj$/util/stream/Node$-CC;->$default$truncate(Lj$/util/stream/Node;JJLj$/util/function/IntFunction;)Lj$/util/stream/Node;

    move-result-object p1

    return-object p1
.end method
