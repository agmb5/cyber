.class Ljwtc/android/chess/ics/ICSClient$17;
.super Ljava/util/HashMap;
.source "ICSClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/ics/ICSClient;->setMenuView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/ics/ICSClient;

.field final synthetic val$index:I

.field final synthetic val$jArray:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Ljwtc/android/chess/ics/ICSClient;Lorg/json/JSONArray;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1124
    iput-object p1, p0, Ljwtc/android/chess/ics/ICSClient$17;->this$0:Ljwtc/android/chess/ics/ICSClient;

    iput-object p2, p0, Ljwtc/android/chess/ics/ICSClient$17;->val$jArray:Lorg/json/JSONArray;

    iput p3, p0, Ljwtc/android/chess/ics/ICSClient$17;->val$index:I

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2, p3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "menu_item"

    invoke-virtual {p0, p2, p1}, Ljwtc/android/chess/ics/ICSClient$17;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
