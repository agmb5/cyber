.class final Lj$/util/concurrent/ConcurrentHashMap$EntryIterator;
.super Lj$/util/concurrent/ConcurrentHashMap$BaseIterator;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lj$/util/Iterator;


# direct methods
.method constructor <init>([Lj$/util/concurrent/ConcurrentHashMap$Node;IILj$/util/concurrent/ConcurrentHashMap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lj$/util/concurrent/ConcurrentHashMap$BaseIterator;-><init>([Lj$/util/concurrent/ConcurrentHashMap$Node;IILj$/util/concurrent/ConcurrentHashMap;)V

    return-void
.end method


# virtual methods
.method public final synthetic forEachRemaining(Lj$/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Iterator$-CC;->$default$forEachRemaining(Ljava/util/Iterator;Lj$/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p1}, Lj$/util/function/Consumer$VivifiedWrapper;->convert(Ljava/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    invoke-static {p0, p1}, Lj$/util/Iterator$-CC;->$default$forEachRemaining(Ljava/util/Iterator;Lj$/util/function/Consumer;)V

    return-void
.end method

.method public final next()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->next:Lj$/util/concurrent/ConcurrentHashMap$Node;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lj$/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    iget-object v2, v0, Lj$/util/concurrent/ConcurrentHashMap$Node;->val:Ljava/lang/Object;

    iput-object v0, p0, Lj$/util/concurrent/ConcurrentHashMap$BaseIterator;->lastReturned:Lj$/util/concurrent/ConcurrentHashMap$Node;

    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap$Traverser;->advance()Lj$/util/concurrent/ConcurrentHashMap$Node;

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap$MapEntry;

    iget-object v3, p0, Lj$/util/concurrent/ConcurrentHashMap$BaseIterator;->map:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1, v2, v3}, Lj$/util/concurrent/ConcurrentHashMap$MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lj$/util/concurrent/ConcurrentHashMap;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
