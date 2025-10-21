.class abstract Lj$/util/stream/MatchOps$BooleanTerminalSink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/Sink;


# instance fields
.field stop:Z

.field value:Z


# direct methods
.method constructor <init>(Lj$/util/stream/MatchOps$MatchKind;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lj$/util/stream/MatchOps$MatchKind;->access$100(Lj$/util/stream/MatchOps$MatchKind;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lj$/util/stream/MatchOps$BooleanTerminalSink;->value:Z

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

.method public final synthetic begin(J)V
    .locals 0

    return-void
.end method

.method public final cancellationRequested()Z
    .locals 1

    iget-boolean v0, p0, Lj$/util/stream/MatchOps$BooleanTerminalSink;->stop:Z

    return v0
.end method

.method public final synthetic end()V
    .locals 0

    return-void
.end method
