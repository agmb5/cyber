.class final Lj$/util/SortedSet$1;
.super Lj$/util/Spliterators$IteratorSpliterator;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Ljava/util/SortedSet;


# direct methods
.method constructor <init>(Ljava/util/SortedSet;Ljava/util/Collection;)V
    .locals 0

    iput-object p1, p0, Lj$/util/SortedSet$1;->this$0:Ljava/util/SortedSet;

    const/16 p1, 0x15

    invoke-direct {p0, p2, p1}, Lj$/util/Spliterators$IteratorSpliterator;-><init>(Ljava/util/Collection;I)V

    return-void
.end method


# virtual methods
.method public final getComparator()Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lj$/util/SortedSet$1;->this$0:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method
