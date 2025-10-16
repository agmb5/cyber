.class public Ljwtc/android/chess/ics/ICSClient$ComparatorHashRating;
.super Ljava/lang/Object;
.source "ICSClient.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljwtc/android/chess/ics/ICSClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ComparatorHashRating"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/ics/ICSClient;


# direct methods
.method public constructor <init>(Ljwtc/android/chess/ics/ICSClient;)V
    .locals 0

    .line 1226
    iput-object p1, p0, Ljwtc/android/chess/ics/ICSClient$ComparatorHashRating;->this$0:Ljwtc/android/chess/ics/ICSClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1226
    check-cast p1, Ljava/util/HashMap;

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljwtc/android/chess/ics/ICSClient$ComparatorHashRating;->compare(Ljava/util/HashMap;Ljava/util/HashMap;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/util/HashMap;Ljava/util/HashMap;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const-string v0, "text_rating"

    .line 1228
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1230
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
