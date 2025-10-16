.class final Lj$/util/stream/SliceOps$2$1;
.super Lj$/util/stream/Sink$ChainedInt;
.source "SourceFile"


# instance fields
.field m:J

.field n:J

.field final synthetic this$0:Lj$/util/stream/SliceOps$2;


# direct methods
.method constructor <init>(Lj$/util/stream/SliceOps$2;Lj$/util/stream/Sink;)V
    .locals 3

    iput-object p1, p0, Lj$/util/stream/SliceOps$2$1;->this$0:Lj$/util/stream/SliceOps$2;

    invoke-direct {p0, p2}, Lj$/util/stream/Sink$ChainedInt;-><init>(Lj$/util/stream/Sink;)V

    iget-wide v0, p1, Lj$/util/stream/SliceOps$2;->val$skip:J

    iput-wide v0, p0, Lj$/util/stream/SliceOps$2$1;->n:J

    iget-wide p1, p1, Lj$/util/stream/SliceOps$2;->val$limit:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide p1, 0x7fffffffffffffffL

    :goto_0
    iput-wide p1, p0, Lj$/util/stream/SliceOps$2$1;->m:J

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 7

    iget-wide v0, p0, Lj$/util/stream/SliceOps$2$1;->n:J

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    iget-wide v0, p0, Lj$/util/stream/SliceOps$2$1;->m:J

    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lj$/util/stream/SliceOps$2$1;->m:J

    iget-object v0, p0, Lj$/util/stream/Sink$ChainedInt;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v0, p1}, Lj$/util/stream/Sink;->accept(I)V

    goto :goto_0

    :cond_0
    sub-long/2addr v0, v2

    iput-wide v0, p0, Lj$/util/stream/SliceOps$2$1;->n:J

    :cond_1
    :goto_0
    return-void
.end method

.method public final begin(J)V
    .locals 8

    iget-object v0, p0, Lj$/util/stream/Sink$ChainedInt;->downstream:Lj$/util/stream/Sink;

    iget-object v1, p0, Lj$/util/stream/SliceOps$2$1;->this$0:Lj$/util/stream/SliceOps$2;

    iget-wide v4, v1, Lj$/util/stream/SliceOps$2;->val$skip:J

    iget-wide v6, p0, Lj$/util/stream/SliceOps$2$1;->m:J

    move-wide v2, p1

    invoke-static/range {v2 .. v7}, Lj$/util/stream/Node$-CC;->access$300(JJJ)J

    move-result-wide p1

    invoke-interface {v0, p1, p2}, Lj$/util/stream/Sink;->begin(J)V

    return-void
.end method

.method public final cancellationRequested()Z
    .locals 5

    iget-wide v0, p0, Lj$/util/stream/SliceOps$2$1;->m:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-object v0, p0, Lj$/util/stream/Sink$ChainedInt;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v0}, Lj$/util/stream/Sink;->cancellationRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
