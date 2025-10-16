.class abstract Lj$/util/stream/FindOps$FindSink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/TerminalSink;


# instance fields
.field hasValue:Z

.field value:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(D)V
    .locals 0

    invoke-static {}, Lj$/util/stream/Node$-CC;->$default$accept()V

    const/4 p1, 0x0

    throw p1
.end method

.method public synthetic accept(I)V
    .locals 0

    invoke-static {}, Lj$/util/stream/Node$-CC;->$default$accept$1()V

    const/4 p1, 0x0

    throw p1
.end method

.method public synthetic accept(J)V
    .locals 0

    invoke-static {}, Lj$/util/stream/Node$-CC;->$default$accept$2()V

    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic accept(Ljava/lang/Double;)V
    .locals 0

    invoke-virtual {p0, p1}, Lj$/util/stream/FindOps$FindSink;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lj$/util/stream/FindOps$FindSink;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Long;)V
    .locals 0

    invoke-virtual {p0, p1}, Lj$/util/stream/FindOps$FindSink;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lj$/util/stream/FindOps$FindSink;->hasValue:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj$/util/stream/FindOps$FindSink;->hasValue:Z

    iput-object p1, p0, Lj$/util/stream/FindOps$FindSink;->value:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final synthetic begin(J)V
    .locals 0

    return-void
.end method

.method public final cancellationRequested()Z
    .locals 1

    iget-boolean v0, p0, Lj$/util/stream/FindOps$FindSink;->hasValue:Z

    return v0
.end method

.method public final synthetic end()V
    .locals 0

    return-void
.end method
