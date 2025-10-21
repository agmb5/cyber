.class final Lj$/util/stream/Nodes$EmptyNode$OfRef;
.super Lj$/util/stream/Nodes$EmptyNode;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lj$/util/stream/Nodes$EmptyNode;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic copyInto([Ljava/lang/Object;I)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic forEach(Lj$/util/function/Consumer;)V
    .locals 0

    return-void
.end method

.method public final spliterator()Lj$/util/Spliterator;
    .locals 1

    invoke-static {}, Lj$/util/Spliterators;->emptySpliterator()Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
