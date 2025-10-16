.class abstract Lj$/util/stream/Nodes$AbstractConcNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/Node;


# instance fields
.field protected final left:Lj$/util/stream/Node;

.field protected final right:Lj$/util/stream/Node;

.field private final size:J


# direct methods
.method constructor <init>(Lj$/util/stream/Node;Lj$/util/stream/Node;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/stream/Nodes$AbstractConcNode;->left:Lj$/util/stream/Node;

    iput-object p2, p0, Lj$/util/stream/Nodes$AbstractConcNode;->right:Lj$/util/stream/Node;

    invoke-interface {p1}, Lj$/util/stream/Node;->count()J

    move-result-wide v0

    invoke-interface {p2}, Lj$/util/stream/Node;->count()J

    move-result-wide p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lj$/util/stream/Nodes$AbstractConcNode;->size:J

    return-void
.end method


# virtual methods
.method public final count()J
    .locals 2

    iget-wide v0, p0, Lj$/util/stream/Nodes$AbstractConcNode;->size:J

    return-wide v0
.end method

.method public bridge synthetic getChild(I)Lj$/util/stream/Node$OfPrimitive;
    .locals 0

    invoke-virtual {p0, p1}, Lj$/util/stream/Nodes$AbstractConcNode;->getChild(I)Lj$/util/stream/Node;

    move-result-object p1

    check-cast p1, Lj$/util/stream/Node$OfPrimitive;

    return-object p1
.end method

.method public final getChild(I)Lj$/util/stream/Node;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lj$/util/stream/Nodes$AbstractConcNode;->left:Lj$/util/stream/Node;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lj$/util/stream/Nodes$AbstractConcNode;->right:Lj$/util/stream/Node;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final getChildCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
