.class public Lcom/xiaomi/mms/utils/EasyMap;
.super Ljava/util/HashMap;
.source "EasyMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    .local p0, this:Lcom/xiaomi/mms/utils/EasyMap;,"Lcom/xiaomi/mms/utils/EasyMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p0, this:Lcom/xiaomi/mms/utils/EasyMap;,"Lcom/xiaomi/mms/utils/EasyMap<TK;TV;>;"
    .local p1, k:Ljava/lang/Object;,"TK;"
    .local p2, v:Ljava/lang/Object;,"TV;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/mms/utils/EasyMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    return-void
.end method


# virtual methods
.method public easyPut(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/mms/utils/EasyMap;
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/xiaomi/mms/utils/EasyMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, this:Lcom/xiaomi/mms/utils/EasyMap;,"Lcom/xiaomi/mms/utils/EasyMap<TK;TV;>;"
    .local p1, k:Ljava/lang/Object;,"TK;"
    .local p2, v:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/mms/utils/EasyMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    return-object p0
.end method
