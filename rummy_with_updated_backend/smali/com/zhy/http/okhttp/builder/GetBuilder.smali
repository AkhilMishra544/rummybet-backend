.class public Lcom/zhy/http/okhttp/builder/GetBuilder;
.super Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;
.source "GetBuilder.java"

# interfaces
.implements Lcom/zhy/http/okhttp/builder/HasParamsable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder<",
        "Lcom/zhy/http/okhttp/builder/GetBuilder;",
        ">;",
        "Lcom/zhy/http/okhttp/builder/HasParamsable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/zhy/http/okhttp/builder/GetBuilder;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/zhy/http/okhttp/builder/GetBuilder;->params:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/zhy/http/okhttp/builder/GetBuilder;->params:Ljava/util/Map;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/zhy/http/okhttp/builder/GetBuilder;->params:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/zhy/http/okhttp/builder/GetBuilder;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/zhy/http/okhttp/builder/GetBuilder;

    move-result-object p1

    return-object p1
.end method

.method protected appendParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 31
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 35
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    .line 36
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 37
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 38
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 41
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_1
    return-object p1
.end method

.method public build()Lcom/zhy/http/okhttp/request/RequestCall;
    .locals 7

    .line 21
    iget-object v0, p0, Lcom/zhy/http/okhttp/builder/GetBuilder;->params:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/zhy/http/okhttp/builder/GetBuilder;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/zhy/http/okhttp/builder/GetBuilder;->params:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/zhy/http/okhttp/builder/GetBuilder;->appendParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zhy/http/okhttp/builder/GetBuilder;->url:Ljava/lang/String;

    .line 26
    :cond_0
    new-instance v0, Lcom/zhy/http/okhttp/request/GetRequest;

    iget-object v2, p0, Lcom/zhy/http/okhttp/builder/GetBuilder;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/zhy/http/okhttp/builder/GetBuilder;->tag:Ljava/lang/Object;

    iget-object v4, p0, Lcom/zhy/http/okhttp/builder/GetBuilder;->params:Ljava/util/Map;

    iget-object v5, p0, Lcom/zhy/http/okhttp/builder/GetBuilder;->headers:Ljava/util/Map;

    iget v6, p0, Lcom/zhy/http/okhttp/builder/GetBuilder;->id:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/zhy/http/okhttp/request/GetRequest;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;I)V

    invoke-virtual {v0}, Lcom/zhy/http/okhttp/request/GetRequest;->build()Lcom/zhy/http/okhttp/request/RequestCall;

    move-result-object v0

    return-object v0
.end method

.method public params(Ljava/util/Map;)Lcom/zhy/http/okhttp/builder/GetBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/zhy/http/okhttp/builder/GetBuilder;"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/zhy/http/okhttp/builder/GetBuilder;->params:Ljava/util/Map;

    return-object p0
.end method

.method public bridge synthetic params(Ljava/util/Map;)Lcom/zhy/http/okhttp/builder/OkHttpRequestBuilder;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/zhy/http/okhttp/builder/GetBuilder;->params(Ljava/util/Map;)Lcom/zhy/http/okhttp/builder/GetBuilder;

    move-result-object p1

    return-object p1
.end method
